#' @title 激活解决502报错的R包
#' @param activate_group 激活数字组1-100的整数
#' @export
help502<-function(activate_group){
  if(!require("keyring",quietly=T))
  result1 <-try(install.packages("keyring"))
  if(result1!="try-error"){
    if(!require("blastula",quietly=T))
    result2 <-try(install.packages("blastula"))
      if(result2!="try-error"){
        if(!require("rmarkdown",quietly=T))
        result3 <- try(install.packages("rmarkdown"))
        result4 <-try(library(keyring))
        result5 <-try(library(blastula))
        result6 <-try(library(rmarkdown))
        if(!require("rmarkdown",quietly=T))
          devtools::install_github("shaoming1995/sofmClump")
        maile<-c("sofm_teacher@163.com","sofm1@163.com","sofm2@163.com","sofmcs@163.com")
        id_temp<-paste0(Sys.info()["nodename"],"-",round(runif(1,min = 1,max = 100000),0))
        result7 <-try(create_smtp_creds_key(
          id = id_temp,
          user = maile[activate_group],
          host = "smtp.163.com",
          port = 25,
          use_ssl = T))
        subject = "一个用户申请了sofmClump的使用"
        from <- maile[activate_group]
        to <- "shaoming0928@163.com"
        subject <- "Test Email"
        body <- Sys.info()["nodename"]
        smtp_send(
          from = from,
          to = to,
          subject = enc2utf8(subject),
          email = email,
          credentials = creds_key(id = id_temp) # 这个id需要和之前一致
        )
        }
    else{"安装失败,程辑包是用R版本4.3.2来建造的"}
  }
else{"安装失败,程辑包是用R版本4.3.2来建造的"}
}








