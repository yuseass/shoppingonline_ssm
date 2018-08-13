package com.shxt.base.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

public class FileUpload {
	
	public String newFileName = null;
	
	/**
	 * 文件上传方法

	 */
	public String uploadFile(MultipartFile photoFile, HttpServletRequest request) {
		// 1.判断文件是否上传
		if (photoFile != null && photoFile.getSize() > 0) {
			// 2.获取服务器的路径
			String path = request.getServletContext().getRealPath("upload");

			// 3.判断文件夹是否存在
			File file = new File(path);
			if (!file.isDirectory()) {// 文件夹不存在，或者不是一个文件夹
				file.mkdirs();
			}

			// 4.获取上传文件的后缀名
			String ext = FilenameUtils.getExtension(photoFile.getOriginalFilename());

			// 5.生成新的文件名
			newFileName = UUID.randomUUID().toString() + "." + ext;// UUID是32位随机数字

			// 6.创建上传到服务器上的文件
			File newFile = new File(path, newFileName);

			// 7.执行文件上传操作
			try {
				photoFile.transferTo(newFile);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			
		}
		return newFileName;
	}
}
