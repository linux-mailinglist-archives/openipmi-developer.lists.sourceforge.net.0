Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8593DC187
	for <lists+openipmi-developer@lfdr.de>; Sat, 31 Jul 2021 01:24:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m9brJ-00082r-37; Fri, 30 Jul 2021 23:24:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dwaipayanray1@gmail.com>) id 1m9M2P-0005PK-Fk
 for openipmi-developer@lists.sourceforge.net; Fri, 30 Jul 2021 06:30:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QzDlSOdZWBlt4r0PCKAXsvwu2THC00Q/tjyRtcnCkig=; b=mtBDyLIDsAls6BM9bbY+yfLQl8
 +fAbp221pbhsWaB5hbL6ghfWOdp81eHVWw3wuMUdbPl9TkapUrFwVz9gePVVB9xr5mmd0SjFy0qSB
 OAgFsaaBJOhwPODPg2zY2qHgCqIHXBppDGxUVUQv9YJlFL9/9ON2qeic+ZDBlvR8LYFM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QzDlSOdZWBlt4r0PCKAXsvwu2THC00Q/tjyRtcnCkig=; b=H
 DcPUQsHAZcG0A6tkknAS3DDkwSndEhGP87LLB0b7u9tKM/A7s+R1/YJvQP/1X4vf17VGy5H0gq5l/
 gzGxDJ/TG2rH+p8cyqeFwJrKlJ7WN/EjQUp8mm4ElHdTIgFxXEDvET6vkqOCSIEwWf7YjJEM/oVQC
 zWUFIFrdzSH7oyJY=;
Received: from mail-pj1-f51.google.com ([209.85.216.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m9M2L-007Rta-2x
 for openipmi-developer@lists.sourceforge.net; Fri, 30 Jul 2021 06:30:29 +0000
Received: by mail-pj1-f51.google.com with SMTP id l19so13800661pjz.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 29 Jul 2021 23:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QzDlSOdZWBlt4r0PCKAXsvwu2THC00Q/tjyRtcnCkig=;
 b=OOgZP6Oqb/0lQi+naETsZINCyn69JBX0KhAPYrUlGcNLUA9JofTT4VXgCmw19NSy0U
 cxYZB9l7EpUH0VLFoSVA2jccBk+9ILcdSGFV8eraPhsrwn3/KN2r2YVgbzVdiJX7+wb7
 07ZeajZsy4ISjS9LTSbml9mN6ZC7qw36D/76DwNqUcU1Y7rjRoVzh56fI+c6DGP8MDzq
 LzKvomG7pWJv2GFFYTKFcIihQnkyql7mqg+UxI7MFKTw9Yvi6G/DUs5t7FKlCKx3QNdd
 WpLZ8yp4glMlEJbC1FxC/YViPNoT6Z7kFs/n1dIq1RoB237TjAcL7EoXYc9vVHn/uVoy
 0K4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QzDlSOdZWBlt4r0PCKAXsvwu2THC00Q/tjyRtcnCkig=;
 b=WtC6OifEEXYGNaLKAo4Bhc0368ZX5BER3olRySF09brY6PkiCBCU3/q6uPlTgeT2CB
 2E2Xvyhj96HoIJQxt02J82N2w3z+RmbR2u3uZ77F1yVHjvws+hY3SXBtb0iL0T8xRwTC
 6lslwRT+IPPY5DIGM1ypVJlj3ajSLfw1pXAAiM2F1R6TK8stvqFDBPXvPdFKDWR/whdN
 NQtwVDO1/mfryYQEZL7oRp8HtF1i+UtqBYzViZcRTHQbm0reZJCltEahwu3JWTKFfif7
 EQFxHBaUcB+OYjB+WxEbKdLRRMHLL8HeeelBdzakoS/MsBOEvRnd6oce1LufrByqvaCm
 qH8A==
X-Gm-Message-State: AOAM530V8U8YnO1pJMuqThojW+nulRcqruikPoJpajR3POBDGyd/9oXv
 mIAqjjVU7ywfAdU+dTBlm187eaTCz3seWTtQ
X-Google-Smtp-Source: ABdhPJyU3pq9iF2msSbUGcXAYJuUIGuZSubDIuzBrR+tD3BLD0bxGNeN5leV+0YBY5TlEErbEjIaZg==
X-Received: by 2002:a17:90a:5b17:: with SMTP id
 o23mr1374451pji.25.1627626619339; 
 Thu, 29 Jul 2021 23:30:19 -0700 (PDT)
Received: from localhost.localdomain ([49.37.50.31])
 by smtp.gmail.com with ESMTPSA id g8sm937913pfu.30.2021.07.29.23.30.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jul 2021 23:30:18 -0700 (PDT)
From: Dwaipayan Ray <dwaipayanray1@gmail.com>
To: minyard@acm.org
Date: Fri, 30 Jul 2021 11:59:51 +0530
Message-Id: <20210730062951.84876-1-dwaipayanray1@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dwaipayanray1[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (dwaipayanray1[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.51 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1m9M2L-007Rta-2x
X-Mailman-Approved-At: Fri, 30 Jul 2021 23:24:03 +0000
Subject: [Openipmi-developer] [PATCH] char: ipmi: use DEVICE_ATTR helper
 macro
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
Cc: lukas.bulwahn@gmail.com, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Dwaipayan Ray <dwaipayanray1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Instead of open coding DEVICE_ATTR, use the helper macro
DEVICE_ATTR_RO to replace DEVICE_ATTR with 0444 octal
permissions.

This was detected as a part of checkpatch evaluation
investigating all reports of DEVICE_ATTR_RO warning
type.

Signed-off-by: Dwaipayan Ray <dwaipayanray1@gmail.com>
---
 drivers/char/ipmi/ipmi_si_intf.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 62929a3e397e..1cbc6a6a3ef4 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -1605,7 +1605,7 @@ static ssize_t name##_show(struct device *dev,			\
 									\
 	return snprintf(buf, 10, "%u\n", smi_get_stat(smi_info, name));	\
 }									\
-static DEVICE_ATTR(name, 0444, name##_show, NULL)
+static DEVICE_ATTR_RO(name)
 
 static ssize_t type_show(struct device *dev,
 			 struct device_attribute *attr,
@@ -1615,7 +1615,7 @@ static ssize_t type_show(struct device *dev,
 
 	return snprintf(buf, 10, "%s\n", si_to_str[smi_info->io.si_type]);
 }
-static DEVICE_ATTR(type, 0444, type_show, NULL);
+static DEVICE_ATTR_RO(type);
 
 static ssize_t interrupts_enabled_show(struct device *dev,
 				       struct device_attribute *attr,
@@ -1626,8 +1626,7 @@ static ssize_t interrupts_enabled_show(struct device *dev,
 
 	return snprintf(buf, 10, "%d\n", enabled);
 }
-static DEVICE_ATTR(interrupts_enabled, 0444,
-		   interrupts_enabled_show, NULL);
+static DEVICE_ATTR_RO(interrupts_enabled);
 
 IPMI_SI_ATTR(short_timeouts);
 IPMI_SI_ATTR(long_timeouts);
@@ -1658,7 +1657,7 @@ static ssize_t params_show(struct device *dev,
 			smi_info->io.irq,
 			smi_info->io.slave_addr);
 }
-static DEVICE_ATTR(params, 0444, params_show, NULL);
+static DEVICE_ATTR_RO(params);
 
 static struct attribute *ipmi_si_dev_attrs[] = {
 	&dev_attr_type.attr,
-- 
2.28.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
