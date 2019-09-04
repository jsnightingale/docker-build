ALTER TABLE `coredb`.`AccessIPHistory` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `coredb`.`billingitems` ADD COLUMN `unique_id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `coredb`.`fraudanalysis` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `coredb`.`invoices_20190617` ADD PRIMARY KEY (id);
ALTER TABLE `coredb`.`monthlybalances` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `coredb`.`summary` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `coredb`.`tmp1107` ADD PRIMARY KEY (id);
ALTER TABLE `coredb`.`tmp1107tobill` ADD PRIMARY KEY (id);
ALTER TABLE `coredb`.`tmp2906_2` ADD PRIMARY KEY (id);
ALTER TABLE `coredb`.`tmpBalanceOffset` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `coredb`.`tmpData` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `coredb`.`tmperrorlog` ADD PRIMARY KEY (id);
ALTER TABLE `coredb`.`tmpfunctionlog` ADD PRIMARY KEY (id);
ALTER TABLE `coredb`.`tmpIvanID` ADD PRIMARY KEY (id);
ALTER TABLE `coredb`.`tmpPrefix` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `coredb`.`tmpRateChange` ADD PRIMARY KEY (id);
ALTER TABLE `coredb`.`tmpRatesChanged` ADD PRIMARY KEY (id);
ALTER TABLE `coredb`.`tmpSC_Commission` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `coredb`.`tmpsignup_debug` ADD PRIMARY KEY (id);
ALTER TABLE `coredb`.`tmpSipCityID` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `coredb`.`tmpTobill` ADD PRIMARY KEY (ID);
ALTER TABLE `coredb`.`v3_Customer_Rate_Copy20171107` ADD PRIMARY KEY (id);
ALTER TABLE `coredb`.`vwCustomerStatus_table` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `coredb`.`vwCustomerStatus_tableold` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `coredb`.`vwrategrouplocalities_table` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `coredb`.`vwrategrouplocalities_tableold` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `calldetails`.`call_details_daily` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `calldetails`.`cd_summary` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;
ALTER TABLE `calldetails`.`plan_breakage_daily` ADD COLUMN `id` int(10) unsigned PRIMARY KEY AUTO_INCREMENT FIRST;

ALTER TABLE `coredb`.`errorlog` ENGINE = `INNODB`;
ALTER TABLE `coredb`.`functionlog` ENGINE = `INNODB`;
ALTER TABLE `coredb`.`vwrategrouplocalities_table` ENGINE = `INNODB`;
ALTER TABLE `coredb`.`vwrategrouplocalities_tableold` ENGINE = `INNODB`;
ALTER TABLE `calldetails`.`call_details_raw_remote_lastid` ENGINE = `INNODB`;
ALTER TABLE `arena`.`tbl_cron` ENGINE = `INNODB`;