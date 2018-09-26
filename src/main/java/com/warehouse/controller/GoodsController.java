package com.warehouse.controller;

import com.warehouse.entity.Goods;
import com.warehouse.repository.GoodsRepository;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    private GoodsRepository goodsRepository;

    @RequestMapping("/addPage")
    public String addPage(){
        return "addgoods";
    }

    @RequestMapping("/add")
    public String addGoods(String name, String description, String type, Integer quantity, HttpServletRequest request){

        //默认图片目录
        String photo = "/uploadFiles/warehouse/";

        // 创建一个通用的多部分解析器.
        CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        // 设置编码
        commonsMultipartResolver.setDefaultEncoding("utf-8");
        // 判断是否有文件上传
        System.out.print("判断"+commonsMultipartResolver.isMultipart(request)+"\n");
        if (commonsMultipartResolver.isMultipart(request)) {//有文件上传

            System.out.print("有文件上传");

            MultipartHttpServletRequest fileRequest = (MultipartHttpServletRequest)request;
            MultipartFile file = fileRequest.getFile("image");

            //TODO 文件压缩算法
            //TODO 限制上传类型

            //构建应用外图片存储目录
            String path = new File(request.getServletContext().getRealPath("")).getParentFile().getAbsolutePath()+File.separator+"uploadFiles"+File.separator+"warehouse";

            //检查父目录是否存在
            File parentFile = new File(path);
            if(!parentFile.exists()){
                parentFile.mkdirs();
            }

            //获取最终存储的位置
            String fileName = file.getOriginalFilename();
            System.out.print("filename="+fileName);
            String ultiPath = path+File.separator+generateRandomFilename()+fileName.substring(fileName.lastIndexOf(".")+1);
            File ultiFile = new File(ultiPath);

            //存储图片
            try {
                file.transferTo(ultiFile);
            } catch (IOException e) {
                e.printStackTrace();
            }

            //重新设定图片访问目录，替换默认图片路径
            photo = ultiPath.substring(ultiPath.indexOf("uploadFiles"));

        }

        Goods goods = new Goods();
        goods.setName(name);
        goods.setDescription(description);
        goods.setPhoto(photo);
        goods.setType(type);
        goods.setQuantity(quantity);
        goodsRepository.save(goods);
        return "redirect:/goods/addPage";
    }

    @RequestMapping("/list")
    public String goodsList(Model model){
        List<Goods> goodses = goodsRepository.findAll();
        model.addAttribute("goodses",goodses);
        return "goodslist";
    }

    @RequestMapping("/listjson")
    @ResponseBody
    public Page<Goods> listJson(int pageNum){
        Pageable pageable = new PageRequest(pageNum-1,10);
        Page<Goods> page = goodsRepository.findAll(pageable);
        return page;
    }

    //TODO 修改
    @RequestMapping("generateReport")
    public void generateReport(HttpServletRequest request, HttpServletResponse response){

        OutputStream outputStream = null;

        //创建Excel表
        HSSFWorkbook  workbook = new HSSFWorkbook();
        HSSFSheet sheet =workbook.createSheet("sheet1");
        HSSFRow row = sheet.createRow(0);
        row.createCell(0).setCellValue("id");
        row.createCell(1).setCellValue("商品名称");
        row.createCell(2).setCellValue("类型");
        row.createCell(3).setCellValue("描述");
        row.createCell(4).setCellValue("数量");
        row.setHeightInPoints(30); // 设置行的高度
        workbook.setActiveSheet(0);

        response.setContentType("application/force-download");
        response.setHeader("Content-Disposition","attachment/filename=报表");
        try {
            outputStream = response.getOutputStream();
            response.reset();
            response.setContentType("application/vnd.ms-excel");
            response.setHeader("Content-disposition", "attachment;filename=template.xls");
            workbook.write(outputStream);
            outputStream.flush();
            outputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            if(outputStream != null){
                try {
                    outputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }


    }

    public String generateRandomFilename() {
        String RandomFilename = "";
        Random rand = new Random();//生成随机数
        int random = rand.nextInt();
        Calendar calCurrent = Calendar.getInstance();
        int intDay = calCurrent.get(Calendar.DATE);
        int intMonth = calCurrent.get(Calendar.MONTH) + 1;
        int intYear = calCurrent.get(Calendar.YEAR);
        String now = String.valueOf(intYear) + "_" + String.valueOf(intMonth) + "_" +
                String.valueOf(intDay) + "_";
        RandomFilename = now + String.valueOf(random > 0 ? random : ( -1) * random) + ".";
        return RandomFilename;
    }
}
