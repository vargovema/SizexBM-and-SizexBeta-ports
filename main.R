if (!require("stargazer")) install.packages("stargazer"); library("stargazer")
if (!require("knitr")) install.packages("knitr"); library("knitr")

ff_BM <- read.csv("data/FF25SizeBM_portfolios.csv")
ff_betas <- read.csv("data/FF25SizeBeta_portfolios.csv")
ff_factors <- read.csv("data/FF3factors.csv")

ff_BM$date <- paste(ff_BM$date,"01", sep="")
ff_BM$date <- as.Date(ff_BM$date, format="%Y%m%d")

ff_factors$date <- paste(ff_BM$date,"01", sep="")
ff_factors$date <- as.Date(ff_BM$date, format="%Y%m%d")

data <- merge(ff_BM, ff_factors)
data <- data[-1] 

data[1:25] <- data[1:25] - data$RF
data.ts <- ts(data, start = c(1963, 7), deltat=1/12)

stargazer(data[1:5], summary.stat=c("mean","sd","min","max"), header=FALSE, 
          font.size="footnotesize", covariate.labels=c("Low","2","3","4","High"), 
          title="Size: Small", label="A.sum.1", out = "out/A.sum.1.tex")

stargazer(data[6:10], summary.stat=c("mean","sd","min","max"), header=FALSE, 
          font.size="footnotesize", covariate.labels=c("Low","2","3","4","High"), 
          title="Size: 2", label="A.sum.2")

stargazer(data[11:15], summary.stat=c("mean","sd","min","max"), header=FALSE, 
          font.size="footnotesize", covariate.labels=c("Low","2","3","4","High"), 
          title="Size: 3", label="A.sum.3")

stargazer(data[16:20], summary.stat=c("mean","sd","min","max"), header=FALSE, 
          font.size="footnotesize", covariate.labels=c("Low","2","3","4","High"), 
          title="Size: 4", label="A.sum.4")

stargazer(data[21:25], summary.stat=c("mean","sd","min","max"), header=FALSE, 
          font.size="footnotesize", covariate.labels=c("Low","2","3","4","High"), 
          title="Size: Big", label="A.sum.5")

models.FF.BM <- list()
for(i in 2:ncol(ff_BM)) {
  form <- formula(paste(names(ff_BM)[i]," ~ Mkt.RF + SMB + HML"))
  models.FF.BM[[i-1]] <- lm(form, data.ts)
}

stargazer(models.FF.BM[1:5], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF","SMB","HML"), 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: Small",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, label="FF.BM.1",
          title="Three-Factor time-series OLS regressions of 25 Size x BM portfolios.",
          table.layout="=lc-ot-s-n")

stargazer(models.FF.BM[6:10], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF","SMB","HML"), 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: 2",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, table.layout="=lc-ot-s-n",
          label="FF.BM.2")

stargazer(models.FF.BM[11:15], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF","SMB","HML"), 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: 3",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, table.layout="=lc-ot-s-n",
          label="FF.BM.3")

stargazer(models.FF.BM[16:20], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF","SMB","HML"), 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: 4",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, table.layout="=lc-ot-s-n", 
          label="FF.BM.4")

stargazer(models.FF.BM[21:25], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF","SMB","HML"), 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: Big",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, table.layout="=lc-ot-s-n",
          label="FF.BM.5")

models.CAPM.BM <- list()
for(i in 2:ncol(ff_BM)) {
  form <- formula(paste(names(ff_BM)[i]," ~ Mkt.RF"))
  models.CAPM.BM[[i-1]] <- lm(form, data.ts)
}

stargazer(models.CAPM.BM[1:5], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF"), table.layout="=lc-ot-s-n", 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: Small",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, label="CAPM.BM.1")

stargazer(models.CAPM.BM[6:10], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF"), table.layout="=lc-ot-s-n", 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: 2",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, label="CAPM.BM.2")

stargazer(models.CAPM.BM[11:15], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF"), table.layout="=lc-ot-s-n", 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: 3",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE)

stargazer(models.CAPM.BM[16:20], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF"), table.layout="=lc-ot-s-n", 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: 4",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, label="CAPM.BM.4")

stargazer(models.CAPM.BM[21:25], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF"), table.layout="=lc-ot-s-n", 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: Big",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, label="CAPM.BM.5")

ff_betas$date <- paste(ff_betas$date,"01", sep="")
ff_betas$date <- as.Date(ff_betas$date, format="%Y%m%d")

ff_factors$date <- paste(ff_betas$date,"01", sep="")
ff_factors$date <- as.Date(ff_betas$date, format="%Y%m%d")
ff_factors$RM.RF.diff <- ff_factors$Mkt.RF - ff_factors$RF

data <- merge(ff_betas, ff_factors)
data <- data[-1] 

data[1:25] <- data[1:25] - data$RF
data.ts <- ts(data, start = c(1963, 7), deltat=1/12)

stargazer(data[1:5], summary.stat=c("mean","sd","min","max"), header=FALSE, 
          font.size="footnotesize", covariate.labels=c("Low","2","3","4","High"), 
          title="Size: Small", label="B.sum.1")

stargazer(data[6:10], summary.stat=c("mean","sd","min","max"), header=FALSE, 
          font.size="footnotesize", covariate.labels=c("Low","2","3","4","High"), 
          title="Size: 2", label="B.sum.2")

stargazer(data[11:15], summary.stat=c("mean","sd","min","max"), header=FALSE, 
          font.size="footnotesize", covariate.labels=c("Low","2","3","4","High"), 
          title="Size: 3", label="B.sum.3")

stargazer(data[16:20], summary.stat=c("mean","sd","min","max"), header=FALSE, 
          font.size="footnotesize", covariate.labels=c("Low","2","3","4","High"), 
          title="Size: 4", label="B.sum.4")

stargazer(data[21:25], summary.stat=c("mean","sd","min","max"), header=FALSE, 
          font.size="footnotesize", covariate.labels=c("Low","2","3","4","High"), 
          title="Size: Big", label="B.sum.5")

models.FF.Beta <- list()
for(i in 2:ncol(ff_betas)) {
  form <- formula(paste(names(ff_betas)[i]," ~ Mkt.RF + SMB + HML"))
  models.FF.Beta[[i-1]] <- lm(form, data.ts)
}

stargazer(models.FF.Beta[1:5], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF","SMB","HML"), 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: Small",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, label="FF.Beta.1",
          title="Three-Factor time-series OLS regressions of the 25 Size x Beta portfolios.",
          table.layout="=lc-ot-s-n")

stargazer(models.FF.Beta[6:10], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF","SMB","HML"), 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: 2",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, table.layout="=lc-ot-s-n", 
          label="FF.Beta.2")

stargazer(models.FF.Beta[11:15], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF","SMB","HML"), 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: 3",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, table.layout="=lc-ot-s-n",
          label="FF.Beta.3")

stargazer(models.FF.Beta[16:20], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF","SMB","HML"), 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: 4",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, table.layout="=lc-ot-s-n",
          label="FF.Beta.4")

stargazer(models.FF.Beta[21:25], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF","SMB","HML"), 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: Big",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, table.layout="=lc-ot-s-n",
          label="FF.Beta.5")

models.CAPM.Beta <- list()
for(i in 2:ncol(ff_betas)) {
  form <- formula(paste(names(ff_betas)[i]," ~ Mkt.RF"))
  models.CAPM.Beta[[i-1]] <- lm(form, data.ts)
}

stargazer(models.CAPM.Beta[1:5], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF"), table.layout="=lc-ot-s-n", 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: Small",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, label="CAPM.Beta.1")

stargazer(models.CAPM.Beta[6:10], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF"), table.layout="=lc-ot-s-n", 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: 2",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, label="CAPM.Beta.2")

stargazer(models.CAPM.Beta[11:15], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF"), table.layout="=lc-ot-s-n", 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: 3",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, label="CAPM.Beta.3")

stargazer(models.CAPM.Beta[16:20], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF"), table.layout="=lc-ot-s-n", 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: 4",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, label="CAPM.Beta.4")

stargazer(models.CAPM.Beta[21:25], header=FALSE, font.size="scriptsize", model.numbers=FALSE,
          dep.var.labels.include=FALSE, covariate.labels=c("RM-RF"), table.layout="=lc-ot-s-n", 
          column.labels=c("Low","2","3","4","High"), dep.var.caption="Size: Big",
          keep.stat=c("rsq", "ser"), single.row = TRUE, df = FALSE, label="CAPM.Beta.5")

coeff.ff.bm <- apply(sapply(models.FF.BM, coef), 1, mean)
coeff.capm.bm <- c(apply(sapply(models.CAPM.BM, coef), 1, mean),NA,NA)
coeff.ff.beta <- apply(sapply(models.FF.Beta, coef), 1, mean)
coeff.capm.beta <- c(apply(sapply(models.CAPM.Beta, coef), 1, mean),NA,NA)


rs.ff.bm <- mean(unlist(sapply(models.FF.BM, summary)["r.squared",]))
rs.capm.bm <- mean(unlist(sapply(models.CAPM.BM, summary)["r.squared",]))
rs.ff.beta <- mean(unlist(sapply(models.FF.Beta, summary)["r.squared",]))
rs.capm.beta <-mean(unlist(sapply(models.CAPM.Beta, summary)["r.squared",]))

comp <- matrix(c(coeff.ff.bm, rs.ff.bm, coeff.capm.bm, rs.capm.bm, 
                 coeff.ff.beta, rs.ff.beta, coeff.capm.beta, rs.capm.beta), 
               nrow=4, byrow=TRUE)
rownames(comp) <- c("FF BM","CAPM BM","FF Beta","CAPM Beta")
colnames(comp) <- c("(Intercept)","RM-RF","SMB","HML","R-squared")

options(knitr.kable.NA = '')
kable(round(comp,3))
