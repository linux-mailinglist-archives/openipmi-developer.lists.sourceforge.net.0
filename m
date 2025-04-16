Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F873A8B86E
	for <lists+openipmi-developer@lfdr.de>; Wed, 16 Apr 2025 14:09:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u51aK-0002g8-Hm;
	Wed, 16 Apr 2025 12:09:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u51aH-0002fx-E8
 for openipmi-developer@lists.sourceforge.net;
 Wed, 16 Apr 2025 12:09:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+yl0cAZ2AoM6yswmjaXzrQ8iZqsWJ8zVT6FZkjKDdrM=; b=nF2GEYdPMJL185XfNwgtuO+jq6
 XmekQ90ouf5xMm7nOXyK+cf4zgi6BkzuT2CMquT0sfs1WAQXQMj7b6oOPoAqXCsmnj1SqEPTelSpq
 0fNDPt5JW7Cjpktg8vcBjg9eeqAYavWrUpGg2+iTJxm3LqsgYKS6NZHjHAsuiY7MVSls=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+yl0cAZ2AoM6yswmjaXzrQ8iZqsWJ8zVT6FZkjKDdrM=; b=N
 odtASFFfjPcdUZFbiRKgox8PVtSWIuK+oK9Ttex5UbZLK6ZAftaiekwd9jNVjlceJmox+cykmxkSN
 SpdKWzPF1kvivBc3VUsI+Ni6rXZSVktBaCrAvmy4Lp1rMSkQ6cAF6B9Fx+ubK6s2nQF4btsDOPZXR
 jo/xlnkOQ2ghIw70=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u51a1-00035j-Ii for openipmi-developer@lists.sourceforge.net;
 Wed, 16 Apr 2025 12:09:41 +0000
Received: by mail-oi1-f169.google.com with SMTP id
 5614622812f47-3fefbbc7dd4so3683963b6e.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 16 Apr 2025 05:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1744805360; x=1745410160;
 darn=lists.sourceforge.net; 
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=+yl0cAZ2AoM6yswmjaXzrQ8iZqsWJ8zVT6FZkjKDdrM=;
 b=xA+NvMEtFlaR6HFs5YjWAFa84tEZaqwAHAL0wbm7lMsmyUjLkAj7SlpQwoM3i93bSg
 yc3L6KUH8oVnoAV3kxgBCCd3MgdoQeWbIIRmpwHk4NbRmLiY8sF/n1ojIuuIiEpF1uBH
 SD+unvMh2KEp8rWfo+In3CMzWFTMpv/RvYRtLmZxdk5dTX+YYqYLRWreHf6d296DzkNj
 zmZecrbwAEF0v1kQ360x9Mqgyd6MdH7Rb40A2bC+A4UaoL7W81kE3PKSq5q1QleNzEbQ
 Vlg9PeHpnHI5xa/Obv+HhZ/bwf0w3hgIMHqwlv85zcIA1Cph/POHdrJOC4eN0flmvjQd
 ZVfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744805360; x=1745410160;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+yl0cAZ2AoM6yswmjaXzrQ8iZqsWJ8zVT6FZkjKDdrM=;
 b=nz3fWRP3QOOc3Cd/4mI5Qr6mDH5bUsVMSIILIr6Q5JX8EoqNTOAgMNCks7ygLjciIc
 30DssPGKPhrMx+d7siZZnjc2Y+aiFZ0+CLWXFvU3/3+j1uCosXK6SIKvTHwlzK+SpNoO
 VGQfrPTx6tRsn5FV/VRAcLx0rmn69cmuObOYVkjG1w9rCHf4a6bw9h8Uotmmcvja/QT4
 /YS7H8N8bAmksLojyeW470KxPga5NNORDRgb77364g6F6zc1Lj9v7LT/cKvwTDTEsgrR
 3zAWC/vfoZ6bluNabwGfLbgHPKjrnbNEVzs0kw303pK9RX1HaAjVajQUVnLLxuBapZdn
 djFA==
X-Gm-Message-State: AOJu0YyxYxk4WLn75uHcstO2g+tVvaMwq/XLa3Qn24N49pif70FZ6hCQ
 Y546M1ojEfRL/qb1vswYM+6GRauMoY4XQl4FVJBSL6kDFlDv2HJ/IAOzPT1+6V6n+6b2QbizMUp
 L
X-Gm-Gg: ASbGncuyjtf0VPLLp8ALM4drS2ePrrrzy1FYn1mW26ghKxQIIL64iQlh6IJ+yhvSTDh
 PxZ/ALzQMuzlsrpKanmFAnKnoWLWMpOFGMuhjkjiXYr/k7uSTjcavIAI3m4xdEJ3GkJwX+yE86V
 cSw+wHo9qh+E1MIyOnidqdFPaLqDeNLjVXXfmnOWwpWc0VdsMHZq2mPG5toZR2VclT80WsT/cft
 1ytIdSGXUSIqpo+UzdSRd3+3Z+ds7z48HQBw9SBXfPtHwPryRvA3Z1QT5vXBq8VW40EsU6aE/u8
 5so2ibZ8x2ZSAGDsqcfeL3k3R7iGtJuO4odA9Yo1a+k=
X-Google-Smtp-Source: AGHT+IHnjhyXrjGAYt5UpueUXnmaVnICj1WMDNUQyBXGxLg8zivgRP+07rpiqAYou6WrjTxm7FHRCg==
X-Received: by 2002:a05:6808:bc7:b0:3fb:a7d0:3b55 with SMTP id
 5614622812f47-400b044b4e2mr877553b6e.35.1744805359472; 
 Wed, 16 Apr 2025 05:09:19 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:1e17:765:833b:6e44])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-40076282d00sm2699761b6e.4.2025.04.16.05.09.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Apr 2025 05:09:18 -0700 (PDT)
Date: Wed, 16 Apr 2025 07:09:12 -0500
From: Corey Minyard <corey@minyard.net>
To: Linux Kernel <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <Z_-d6Pj7ZFuG9gNA@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Andy reported: Debian clang version 19.1.7 is not happy when
 compiled with `make W=1` (note,
 CONFIG_WERROR=y is the default): ipmi_si_platform.c:268:15:
 error: cast to smaller integer type 'enum si_type' +from 'const void *'
 [-Werror, -Wvoid-pointer-to-enum-cast]
 268 | io.si_type = (enum +si_type)device_get_match_data(&pdev-> [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.169 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.169 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.169 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1u51a1-00035j-Ii
Subject: [Openipmi-developer] [PATCH] ipmi:si: Move SI type information into
 an info structure
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
Reply-To: Z_6uzH9DsWIh-hIz@mail.minyard.net
Cc: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Andy reported:

Debian clang version 19.1.7 is not happy when compiled with
`make W=1` (note, CONFIG_WERROR=y is the default):

ipmi_si_platform.c:268:15: error: cast to smaller integer type 'enum si_type'
+from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
  268 |         io.si_type      = (enum
+si_type)device_get_match_data(&pdev->dev);

The IPMI SI type is an enum that was cast into a pointer that was
then cast into an enum again.  That's not the greatest style, so
instead create an info structure to hold the data and use that.

Reported-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Corey Minyard <corey@minyard.net>
---
 drivers/char/ipmi/ipmi_si.h          |  6 +++++-
 drivers/char/ipmi/ipmi_si_intf.c     | 30 ++++++++++++++--------------
 drivers/char/ipmi/ipmi_si_pci.c      |  8 ++++----
 drivers/char/ipmi/ipmi_si_platform.c | 26 +++++++++++++-----------
 4 files changed, 38 insertions(+), 32 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si.h b/drivers/char/ipmi/ipmi_si.h
index a7ead2a4c753..30b5e5f54172 100644
--- a/drivers/char/ipmi/ipmi_si.h
+++ b/drivers/char/ipmi/ipmi_si.h
@@ -23,6 +23,10 @@ enum si_type {
 	SI_TYPE_INVALID, SI_KCS, SI_SMIC, SI_BT, SI_TYPE_MAX
 };
 
+struct ipmi_match_info {
+    enum si_type type;
+};
+
 /* Array is defined in the ipmi_si_intf.c */
 extern const char *const si_to_str[];
 
@@ -64,7 +68,7 @@ struct si_sm_io {
 	void (*irq_cleanup)(struct si_sm_io *io);
 
 	u8 slave_addr;
-	enum si_type si_type;
+	struct ipmi_match_info si_info;
 	struct device *dev;
 };
 
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 7dcf934d5902..21a2c2998a3d 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -692,7 +692,7 @@ static void handle_transaction_done(struct smi_info *smi_info)
 			break;
 		}
 		enables = current_global_enables(smi_info, 0, &irq_on);
-		if (smi_info->io.si_type == SI_BT)
+		if (smi_info->io.si_info.type == SI_BT)
 			/* BT has its own interrupt enable bit. */
 			check_bt_irq(smi_info, irq_on);
 		if (enables != (msg[3] & GLOBAL_ENABLES_MASK)) {
@@ -1119,7 +1119,7 @@ irqreturn_t ipmi_si_irq_handler(int irq, void *data)
 	struct smi_info *smi_info = data;
 	unsigned long   flags;
 
-	if (smi_info->io.si_type == SI_BT)
+	if (smi_info->io.si_info.type == SI_BT)
 		/* We need to clear the IRQ flag for the BT interface. */
 		smi_info->io.outputb(&smi_info->io, IPMI_BT_INTMASK_REG,
 				     IPMI_BT_INTMASK_CLEAR_IRQ_BIT
@@ -1164,7 +1164,7 @@ static int smi_start_processing(void            *send_info,
 	 * The BT interface is efficient enough to not need a thread,
 	 * and there is no need for a thread if we have interrupts.
 	 */
-	else if ((new_smi->io.si_type != SI_BT) && (!new_smi->io.irq))
+	else if ((new_smi->io.si_info.type != SI_BT) && (!new_smi->io.irq))
 		enable = 1;
 
 	if (enable) {
@@ -1235,7 +1235,7 @@ MODULE_PARM_DESC(kipmid_max_busy_us,
 
 void ipmi_irq_finish_setup(struct si_sm_io *io)
 {
-	if (io->si_type == SI_BT)
+	if (io->si_info.type == SI_BT)
 		/* Enable the interrupt in the BT interface. */
 		io->outputb(io, IPMI_BT_INTMASK_REG,
 			    IPMI_BT_INTMASK_ENABLE_IRQ_BIT);
@@ -1243,7 +1243,7 @@ void ipmi_irq_finish_setup(struct si_sm_io *io)
 
 void ipmi_irq_start_cleanup(struct si_sm_io *io)
 {
-	if (io->si_type == SI_BT)
+	if (io->si_info.type == SI_BT)
 		/* Disable the interrupt in the BT interface. */
 		io->outputb(io, IPMI_BT_INTMASK_REG, 0);
 }
@@ -1614,7 +1614,7 @@ static ssize_t type_show(struct device *dev,
 {
 	struct smi_info *smi_info = dev_get_drvdata(dev);
 
-	return sysfs_emit(buf, "%s\n", si_to_str[smi_info->io.si_type]);
+	return sysfs_emit(buf, "%s\n", si_to_str[smi_info->io.si_info.type]);
 }
 static DEVICE_ATTR_RO(type);
 
@@ -1649,7 +1649,7 @@ static ssize_t params_show(struct device *dev,
 
 	return sysfs_emit(buf,
 			"%s,%s,0x%lx,rsp=%d,rsi=%d,rsh=%d,irq=%d,ipmb=%d\n",
-			si_to_str[smi_info->io.si_type],
+			si_to_str[smi_info->io.si_info.type],
 			addr_space_to_str[smi_info->io.addr_space],
 			smi_info->io.addr_data,
 			smi_info->io.regspacing,
@@ -1803,7 +1803,7 @@ setup_dell_poweredge_bt_xaction_handler(struct smi_info *smi_info)
 {
 	struct ipmi_device_id *id = &smi_info->device_id;
 	if (id->manufacturer_id == DELL_IANA_MFR_ID &&
-	    smi_info->io.si_type == SI_BT)
+	    smi_info->io.si_info.type == SI_BT)
 		register_xaction_notifier(&dell_poweredge_bt_xaction_notifier);
 }
 
@@ -1907,13 +1907,13 @@ int ipmi_si_add_smi(struct si_sm_io *io)
 			/* We prefer ACPI over SMBIOS. */
 			dev_info(dup->io.dev,
 				 "Removing SMBIOS-specified %s state machine in favor of ACPI\n",
-				 si_to_str[new_smi->io.si_type]);
+				 si_to_str[new_smi->io.si_info.type]);
 			cleanup_one_si(dup);
 		} else {
 			dev_info(new_smi->io.dev,
 				 "%s-specified %s state machine: duplicate\n",
 				 ipmi_addr_src_to_str(new_smi->io.addr_source),
-				 si_to_str[new_smi->io.si_type]);
+				 si_to_str[new_smi->io.si_info.type]);
 			rv = -EBUSY;
 			kfree(new_smi);
 			goto out_err;
@@ -1922,7 +1922,7 @@ int ipmi_si_add_smi(struct si_sm_io *io)
 
 	pr_info("Adding %s-specified %s state machine\n",
 		ipmi_addr_src_to_str(new_smi->io.addr_source),
-		si_to_str[new_smi->io.si_type]);
+		si_to_str[new_smi->io.si_info.type]);
 
 	list_add_tail(&new_smi->link, &smi_infos);
 
@@ -1945,12 +1945,12 @@ static int try_smi_init(struct smi_info *new_smi)
 
 	pr_info("Trying %s-specified %s state machine at %s address 0x%lx, slave address 0x%x, irq %d\n",
 		ipmi_addr_src_to_str(new_smi->io.addr_source),
-		si_to_str[new_smi->io.si_type],
+		si_to_str[new_smi->io.si_info.type],
 		addr_space_to_str[new_smi->io.addr_space],
 		new_smi->io.addr_data,
 		new_smi->io.slave_addr, new_smi->io.irq);
 
-	switch (new_smi->io.si_type) {
+	switch (new_smi->io.si_info.type) {
 	case SI_KCS:
 		new_smi->handlers = &kcs_smi_handlers;
 		break;
@@ -2073,7 +2073,7 @@ static int try_smi_init(struct smi_info *new_smi)
 	smi_num++;
 
 	dev_info(new_smi->io.dev, "IPMI %s interface initialized\n",
-		 si_to_str[new_smi->io.si_type]);
+		 si_to_str[new_smi->io.si_info.type]);
 
 	WARN_ON(new_smi->io.dev->init_name != NULL);
 
@@ -2309,7 +2309,7 @@ struct device *ipmi_si_remove_by_data(int addr_space, enum si_type si_type,
 	list_for_each_entry_safe(e, tmp_e, &smi_infos, link) {
 		if (e->io.addr_space != addr_space)
 			continue;
-		if (e->io.si_type != si_type)
+		if (e->io.si_info.type != si_type)
 			continue;
 		if (e->io.addr_data == addr) {
 			dev = get_device(e->io.dev);
diff --git a/drivers/char/ipmi/ipmi_si_pci.c b/drivers/char/ipmi/ipmi_si_pci.c
index 8c0ea637aba0..1f4bdb3bbdd4 100644
--- a/drivers/char/ipmi/ipmi_si_pci.c
+++ b/drivers/char/ipmi/ipmi_si_pci.c
@@ -23,7 +23,7 @@ MODULE_PARM_DESC(trypci,
 
 static int ipmi_pci_probe_regspacing(struct si_sm_io *io)
 {
-	if (io->si_type == SI_KCS) {
+	if (io->si_info.type == SI_KCS) {
 		unsigned char	status;
 		int		regspacing;
 
@@ -74,15 +74,15 @@ static int ipmi_pci_probe(struct pci_dev *pdev,
 
 	switch (pdev->class) {
 	case PCI_CLASS_SERIAL_IPMI_SMIC:
-		io.si_type = SI_SMIC;
+		io.si_info.type = SI_SMIC;
 		break;
 
 	case PCI_CLASS_SERIAL_IPMI_KCS:
-		io.si_type = SI_KCS;
+		io.si_info.type = SI_KCS;
 		break;
 
 	case PCI_CLASS_SERIAL_IPMI_BT:
-		io.si_type = SI_BT;
+		io.si_info.type = SI_BT;
 		break;
 
 	default:
diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index 550cabd43ae6..53066713f8e4 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -165,7 +165,7 @@ static int platform_ipmi_probe(struct platform_device *pdev)
 	case SI_KCS:
 	case SI_SMIC:
 	case SI_BT:
-		io.si_type = type;
+		io.si_info.type = type;
 		break;
 	case SI_TYPE_INVALID: /* User disabled this in hardcode. */
 		return -ENODEV;
@@ -212,13 +212,14 @@ static int platform_ipmi_probe(struct platform_device *pdev)
 }
 
 #ifdef CONFIG_OF
+static struct ipmi_match_info kcs_info = { .type = SI_KCS };
+static struct ipmi_match_info smic_info = { .type = SI_SMIC };
+static struct ipmi_match_info bt_info = { .type = SI_BT };
+
 static const struct of_device_id of_ipmi_match[] = {
-	{ .type = "ipmi", .compatible = "ipmi-kcs",
-	  .data = (void *)(unsigned long) SI_KCS },
-	{ .type = "ipmi", .compatible = "ipmi-smic",
-	  .data = (void *)(unsigned long) SI_SMIC },
-	{ .type = "ipmi", .compatible = "ipmi-bt",
-	  .data = (void *)(unsigned long) SI_BT },
+	{ .type = "ipmi", .compatible = "ipmi-kcs", .data = &kcs_info },
+	{ .type = "ipmi", .compatible = "ipmi-smic", .data = &smic_info },
+	{ .type = "ipmi", .compatible = "ipmi-bt", .data = &bt_info },
 	{},
 };
 MODULE_DEVICE_TABLE(of, of_ipmi_match);
@@ -265,7 +266,8 @@ static int of_ipmi_probe(struct platform_device *pdev)
 	}
 
 	memset(&io, 0, sizeof(io));
-	io.si_type	= (enum si_type)device_get_match_data(&pdev->dev);
+	io.si_info	= *((struct ipmi_match_info *)
+			    device_get_match_data(&pdev->dev));
 	io.addr_source	= SI_DEVICETREE;
 	io.irq_setup	= ipmi_std_irq_setup;
 
@@ -296,7 +298,7 @@ static int find_slave_address(struct si_sm_io *io, int slave_addr)
 {
 #ifdef CONFIG_IPMI_DMI_DECODE
 	if (!slave_addr)
-		slave_addr = ipmi_dmi_get_slave_addr(io->si_type,
+		slave_addr = ipmi_dmi_get_slave_addr(io->si_info.type,
 						     io->addr_space,
 						     io->addr_data);
 #endif
@@ -335,13 +337,13 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
 
 	switch (tmp) {
 	case 1:
-		io.si_type = SI_KCS;
+		io.si_info.type = SI_KCS;
 		break;
 	case 2:
-		io.si_type = SI_SMIC;
+		io.si_info.type = SI_SMIC;
 		break;
 	case 3:
-		io.si_type = SI_BT;
+		io.si_info.type = SI_BT;
 		break;
 	case 4: /* SSIF, just ignore */
 		return -ENODEV;
-- 
2.43.0


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
