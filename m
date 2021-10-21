Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1FB43A3C6
	for <lists+openipmi-developer@lfdr.de>; Mon, 25 Oct 2021 22:02:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mf6At-00075K-TT; Mon, 25 Oct 2021 20:02:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cgel.zte@gmail.com>) id 1mdVu5-000087-EA
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Oct 2021 11:06:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C6rC4fdbQUv8/KQ2zxz0/9Y2n848bAt+XoEZOMW8dKw=; b=GGjLGET71zYEncsfxjwAMzelV+
 RI75lcIM2f22Wi3Tc7CvLorB+WeJXmR8AmqzFc3wDHK4e14ZznzM0Wx6tjDaQ+IHtXrG2TSczLAuf
 +uoRTrDQO5BIFr8ruggAyEE4fScWNdgqBoLisoTkpU5Ku/iOiSrEX9OBFVpcPPlGzpF8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=C6rC4fdbQUv8/KQ2zxz0/9Y2n848bAt+XoEZOMW8dKw=; b=c
 lSqXgEeu1fqnJhHzIA+2eGfa0VKdgUwm3FXRumsGpiIH5cDus5XylnB+Ys8kYEAyKQboMB4lGVhAM
 vuJUXCaeiswnPrJjhVQTAZlUvDPkEpmCE/fmk96py7XbNZDwDw8zC+Vnh5YJdbjRTGo2MCTytJkEO
 n+wx+co2oKDqEp7Y=;
Received: from mail-pj1-f53.google.com ([209.85.216.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mdVu2-00A4U3-4W
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Oct 2021 11:06:33 +0000
Received: by mail-pj1-f53.google.com with SMTP id
 s61-20020a17090a69c300b0019f663cfcd1so2852208pjj.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 21 Oct 2021 04:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C6rC4fdbQUv8/KQ2zxz0/9Y2n848bAt+XoEZOMW8dKw=;
 b=Fm4qWATM2292BRHuf5t+F6ra1MxRxm6PWheZJWNfX7g6LQevdsYpF6nMIFPWR1lMqq
 Kj7kd/IJtJfhBrdBSChs/nzK3uQSNJhyPITOPUtT1YfdspFxSF8fCd3CDwAlLYzRbYFi
 x9e8Im+zL6xxi6VSrNwL6Xt+MZBaiMHzVA+EEk2XCcbfrP37emHUQgF3jcCinPZOxYIa
 g9CXiyC2F3nSuFN+FiBNbV4MxTuT5Sueis3MuOx+aBVd2F+TMM3akzYAhCWrSYXiKb8u
 li4xQlIi/nEhhy/+MICmQIAi8sQQT9XK7FQ4wTcuPmwz+eJ2MZ52TKieScCfwBg8XPqW
 hOQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C6rC4fdbQUv8/KQ2zxz0/9Y2n848bAt+XoEZOMW8dKw=;
 b=dLkOZKySyMSsMSoIsMCEmmW2UgLb6sFX2PHeA1Y3NzyK3B3BFif87zuIjh7z/R04Jm
 eV/do787uRT2TyovM8UX4ScmltDUUBFU3ZDLPUeu161rFqsaazH3fYEtqmcRmZ2CtWU0
 VL1riujlcMfrMSkzLkcKI8gSQpnlcbCLSl195ywy20L4UPKZr6n0ZFhCtq8X1qgcW1zJ
 83Pw+CGxdvcfYu1P7RQDoyi9pLHm88q5cfvnEQKFNz7erYizXJIMXFVDg0dwiyl/ZNu2
 qB9FjKrxFQbVkYWeBN3KfsMw58hjYzIAolNIjxjEKP9cEVTWpdUHiddrk740X3zIQWBQ
 x6Jw==
X-Gm-Message-State: AOAM5304hu7jJDE2WDl+LhhgWMmAuSVHHEmrkF5csy7BDI6FHJlcCXLk
 88qEXMSbpHUPnqWTN/2mMEM=
X-Google-Smtp-Source: ABdhPJyFK/rD8960L5354F0bbizuGHAXS5CvWk01rynNxygpo2vaU/12feZSofefCXv6kS2PneWE8A==
X-Received: by 2002:a17:90b:2382:: with SMTP id
 mr2mr5975071pjb.186.1634814384610; 
 Thu, 21 Oct 2021 04:06:24 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id j3sm5777308pfu.218.2021.10.21.04.06.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 04:06:24 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: ye.guojin@zte.com.cn
To: minyard@acm.org
Date: Thu, 21 Oct 2021 11:06:08 +0000
Message-Id: <20211021110608.1060260-1-ye.guojin@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Ye Guojin coccicheck complains about the use of
 snprintf()
 in sysfs show functions: WARNING use scnprintf or sprintf Use sysfs_emit
 instead of scnprintf, snprintf or sprintf makes more sense. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.53 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mdVu2-00A4U3-4W
X-Mailman-Approved-At: Mon, 25 Oct 2021 20:02:25 +0000
Subject: [Openipmi-developer] [PATCH] char: ipmi: replace snprintf in show
 functions with sysfs_emit
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Ye Guojin <ye.guojin@zte.com.cn>, openipmi-developer@lists.sourceforge.net,
 Zeal Robot <zealci@zte.com.cn>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Ye Guojin <ye.guojin@zte.com.cn>

coccicheck complains about the use of snprintf() in sysfs show
functions:
WARNING  use scnprintf or sprintf

Use sysfs_emit instead of scnprintf, snprintf or sprintf makes more
sense.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Ye Guojin <ye.guojin@zte.com.cn>
---
 drivers/char/ipmi/ipmi_msghandler.c | 20 ++++++++++----------
 drivers/char/ipmi/ipmi_si_intf.c    |  8 ++++----
 drivers/char/ipmi/ipmi_ssif.c       |  4 ++--
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index a60201d3f735..deed355422f4 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -2716,7 +2716,7 @@ static ssize_t device_id_show(struct device *dev,
 	if (rv)
 		return rv;
 
-	return snprintf(buf, 10, "%u\n", id.device_id);
+	return sysfs_emit(buf, "%u\n", id.device_id);
 }
 static DEVICE_ATTR_RO(device_id);
 
@@ -2732,7 +2732,7 @@ static ssize_t provides_device_sdrs_show(struct device *dev,
 	if (rv)
 		return rv;
 
-	return snprintf(buf, 10, "%u\n", (id.device_revision & 0x80) >> 7);
+	return sysfs_emit(buf, "%u\n", (id.device_revision & 0x80) >> 7);
 }
 static DEVICE_ATTR_RO(provides_device_sdrs);
 
@@ -2747,7 +2747,7 @@ static ssize_t revision_show(struct device *dev, struct device_attribute *attr,
 	if (rv)
 		return rv;
 
-	return snprintf(buf, 20, "%u\n", id.device_revision & 0x0F);
+	return sysfs_emit(buf, "%u\n", id.device_revision & 0x0F);
 }
 static DEVICE_ATTR_RO(revision);
 
@@ -2763,7 +2763,7 @@ static ssize_t firmware_revision_show(struct device *dev,
 	if (rv)
 		return rv;
 
-	return snprintf(buf, 20, "%u.%x\n", id.firmware_revision_1,
+	return sysfs_emit(buf, "%u.%x\n", id.firmware_revision_1,
 			id.firmware_revision_2);
 }
 static DEVICE_ATTR_RO(firmware_revision);
@@ -2780,7 +2780,7 @@ static ssize_t ipmi_version_show(struct device *dev,
 	if (rv)
 		return rv;
 
-	return snprintf(buf, 20, "%u.%u\n",
+	return sysfs_emit(buf, "%u.%u\n",
 			ipmi_version_major(&id),
 			ipmi_version_minor(&id));
 }
@@ -2798,7 +2798,7 @@ static ssize_t add_dev_support_show(struct device *dev,
 	if (rv)
 		return rv;
 
-	return snprintf(buf, 10, "0x%02x\n", id.additional_device_support);
+	return sysfs_emit(buf, "0x%02x\n", id.additional_device_support);
 }
 static DEVICE_ATTR(additional_device_support, S_IRUGO, add_dev_support_show,
 		   NULL);
@@ -2815,7 +2815,7 @@ static ssize_t manufacturer_id_show(struct device *dev,
 	if (rv)
 		return rv;
 
-	return snprintf(buf, 20, "0x%6.6x\n", id.manufacturer_id);
+	return sysfs_emit(buf, "0x%6.6x\n", id.manufacturer_id);
 }
 static DEVICE_ATTR_RO(manufacturer_id);
 
@@ -2831,7 +2831,7 @@ static ssize_t product_id_show(struct device *dev,
 	if (rv)
 		return rv;
 
-	return snprintf(buf, 10, "0x%4.4x\n", id.product_id);
+	return sysfs_emit(buf, "0x%4.4x\n", id.product_id);
 }
 static DEVICE_ATTR_RO(product_id);
 
@@ -2847,7 +2847,7 @@ static ssize_t aux_firmware_rev_show(struct device *dev,
 	if (rv)
 		return rv;
 
-	return snprintf(buf, 21, "0x%02x 0x%02x 0x%02x 0x%02x\n",
+	return sysfs_emit(buf, "0x%02x 0x%02x 0x%02x 0x%02x\n",
 			id.aux_firmware_revision[3],
 			id.aux_firmware_revision[2],
 			id.aux_firmware_revision[1],
@@ -2869,7 +2869,7 @@ static ssize_t guid_show(struct device *dev, struct device_attribute *attr,
 	if (!guid_set)
 		return -ENOENT;
 
-	return snprintf(buf, UUID_STRING_LEN + 1 + 1, "%pUl\n", &guid);
+	return sysfs_emit(buf, "%pUl\n", &guid);
 }
 static DEVICE_ATTR_RO(guid);
 
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 6f3272b58ced..64dedb3ef8ec 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -1603,7 +1603,7 @@ static ssize_t name##_show(struct device *dev,			\
 {									\
 	struct smi_info *smi_info = dev_get_drvdata(dev);		\
 									\
-	return snprintf(buf, 10, "%u\n", smi_get_stat(smi_info, name));	\
+	return sysfs_emit(buf, "%u\n", smi_get_stat(smi_info, name));	\
 }									\
 static DEVICE_ATTR_RO(name)
 
@@ -1613,7 +1613,7 @@ static ssize_t type_show(struct device *dev,
 {
 	struct smi_info *smi_info = dev_get_drvdata(dev);
 
-	return snprintf(buf, 10, "%s\n", si_to_str[smi_info->io.si_type]);
+	return sysfs_emit(buf, "%s\n", si_to_str[smi_info->io.si_type]);
 }
 static DEVICE_ATTR_RO(type);
 
@@ -1624,7 +1624,7 @@ static ssize_t interrupts_enabled_show(struct device *dev,
 	struct smi_info *smi_info = dev_get_drvdata(dev);
 	int enabled = smi_info->io.irq && !smi_info->interrupt_disabled;
 
-	return snprintf(buf, 10, "%d\n", enabled);
+	return sysfs_emit(buf, "%d\n", enabled);
 }
 static DEVICE_ATTR_RO(interrupts_enabled);
 
@@ -1646,7 +1646,7 @@ static ssize_t params_show(struct device *dev,
 {
 	struct smi_info *smi_info = dev_get_drvdata(dev);
 
-	return snprintf(buf, 200,
+	return sysfs_emit(buf,
 			"%s,%s,0x%lx,rsp=%d,rsi=%d,rsh=%d,irq=%d,ipmb=%d\n",
 			si_to_str[smi_info->io.si_type],
 			addr_space_to_str[smi_info->io.addr_space],
diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 20d5af92966d..0c62e578749e 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1190,7 +1190,7 @@ static ssize_t ipmi_##name##_show(struct device *dev,			\
 {									\
 	struct ssif_info *ssif_info = dev_get_drvdata(dev);		\
 									\
-	return snprintf(buf, 10, "%u\n", ssif_get_stat(ssif_info, name));\
+	return sysfs_emit(buf, "%u\n", ssif_get_stat(ssif_info, name));\
 }									\
 static DEVICE_ATTR(name, S_IRUGO, ipmi_##name##_show, NULL)
 
@@ -1198,7 +1198,7 @@ static ssize_t ipmi_type_show(struct device *dev,
 			      struct device_attribute *attr,
 			      char *buf)
 {
-	return snprintf(buf, 10, "ssif\n");
+	return sysfs_emit(buf, "ssif\n");
 }
 static DEVICE_ATTR(type, S_IRUGO, ipmi_type_show, NULL);
 
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
