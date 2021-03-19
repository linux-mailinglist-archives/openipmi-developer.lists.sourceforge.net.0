Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEDB34156E
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Mar 2021 07:29:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lN8dK-00015R-My; Fri, 19 Mar 2021 06:29:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lN8dJ-00015A-CO
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:29:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ko3OKT6VnAb6ae+1fgFzozhFm1BKXxGAhRiRJMA4uKI=; b=EOaMs29xf5nKgw1C/moXNP44RR
 EiL8ZKJ3c7QrJp6z8/HE8OX4uNmIOuNQtUcUl3lNjlVtDddYXZyB5TuhUXIBCsbiuSGAazcoVwAdv
 JeheLMfg5lYeTe6Om5en4O9GQxK5qQsbBWyLcxnaa5YcEG5eJwiJxmN5xoruZyjkz97g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ko3OKT6VnAb6ae+1fgFzozhFm1BKXxGAhRiRJMA4uKI=; b=iZEej4GMCDobMNpByI33Umi3W6
 MeGspfoTjlwMoWdD02u3UYOtKERRUfdz0aB0gdWAc8E1k7kCVL1XnTznt96seY/fQ0e3s3pvj2dnB
 fCnfirKNdTqyyQblVq5Z3suRBu3PeL2sjTflnMXbsTZyJbz1jTb6Jo/4V4J79BlK5w9w=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lN8dE-000WwZ-7c
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:29:17 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id AD96A580A81;
 Fri, 19 Mar 2021 02:29:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 19 Mar 2021 02:29:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Ko3OKT6VnAb6a
 e+1fgFzozhFm1BKXxGAhRiRJMA4uKI=; b=dJHIGZonpQ9HTdVw6aF1QAjUoxsM7
 QmmVt+2eKii03UKH0XsdUlvRObCRodWTTQI6TJtbiikzxo/9t0SQFWGfvuGFNxhV
 fPt4aR2g3yFr4WC15pXcsoczB5XXjniRC+RbRPYkJFazUWX+rlxJ1HLq23j9cAoB
 Hmekauk0yLdkN5YT2Wbx16igH1+5vFcOvZ27EPM4EELyC9assOLm9xMJSLG344cn
 4EXoG7tDDzQOMVzUIwryvSkFHszhMePxZjUM5CbPWfVL3Xu3T3OfwNv3NYC8kP4H
 FnMxxpztcvP3ieP7QJ3kW46pc00f+zbof8Y4dKOgw6l1F923SIIWsiwCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Ko3OKT6VnAb6ae+1fgFzozhFm1BKXxGAhRiRJMA4uKI=; b=ui8I7kmD
 5yewb3FXgYVAoBena9UGppFRLeStah0n/1XXYxR122UdwtfjG9BiuZXMjYUmxnym
 +Lm27cPyg0EAb3/eehEO7+RiejNZNBWH8pYIiOztAlnemWuXw+asV6i+2qTLJNvq
 hU0WD4HbYo6u1U0fkNWujXKukww6CFKrh2iWHFJii4HMZiYqYssZQyFwhmY0FKrH
 plI4CXXoAQbXsO35xJ3SdighbnLRCRqcnZaKf5baGKJr0mZRlxdUwNPhbusfwYsx
 5/9rPOXSZQbPb5cC3nc8SqoQZbDuQNEcvQ6MYbGAdqKkUG3fzZFW8xFsLHGlfAmz
 Jr6WeC24MmeFNA==
X-ME-Sender: <xms:skRUYOy0enj62DZeHbGLSUfKh0e7VCMx-bJX6MaDDZWO8P5TQIWajA>
 <xme:skRUYKQsUUT5u0P2YH1dFvVLAVZhWo6SWgSt8RYZ5MdnHpIFbJ5xxbfsdg8kBd7Sn
 towF2EczHPMD35wWQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefjedgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecukfhppeduudekrddvuddtrddukedurdeh
 heenucevlhhushhtvghrufhiiigvpeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnh
 gurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:skRUYAWyO1s2m7-0d3GodjeuPzovWrxh7mQeldoa36GhKpuhj1pJPw>
 <xmx:skRUYEi22jEmgc-9BjNQBiFFG4pet5eWiGcPIkWlXAOwOY-ulI-W-w>
 <xmx:skRUYAARiHB65jb1gmfNCOjNjebjQejUkIF7q__wNvOQF0t2XvovUw>
 <xmx:skRUYKycJfdizsA8XHon9_EK3NV4oqvQRmT5eF7pwsnhu5hlHYMScA>
Received: from localhost.localdomain
 (ppp118-210-181-55.adl-adc-lon-bras34.tpg.internode.on.net [118.210.181.55])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1F558240054;
 Fri, 19 Mar 2021 02:29:00 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Fri, 19 Mar 2021 16:57:39 +1030
Message-Id: <20210319062752.145730-8-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210319062752.145730-1-andrew@aj.id.au>
References: <20210319062752.145730-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lN8dE-000WwZ-7c
Subject: [Openipmi-developer] [PATCH v2 08/21] ipmi: kcs_bmc: Rename {read,
 write}_{status, data}() functions
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
Cc: devicetree@vger.kernel.org, ryan_chen@aspeedtech.com, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, tali.perry1@gmail.com,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 chiawei_wang@aspeedtech.com, linux-arm-kernel@lists.infradead.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Rename the functions in preparation for separating the IPMI chardev out
from the KCS BMC core.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/kcs_bmc.c | 52 ++++++++++++++++++-------------------
 1 file changed, 25 insertions(+), 27 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 58fb1a7bd50d..c4336c1f2d6d 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -45,42 +45,42 @@ enum kcs_states {
 #define KCS_CMD_WRITE_END         0x62
 #define KCS_CMD_READ_BYTE         0x68
 
-static inline u8 read_data(struct kcs_bmc *kcs_bmc)
+static inline u8 kcs_bmc_read_data(struct kcs_bmc *kcs_bmc)
 {
 	return kcs_bmc->io_inputb(kcs_bmc, kcs_bmc->ioreg.idr);
 }
 
-static inline void write_data(struct kcs_bmc *kcs_bmc, u8 data)
+static inline void kcs_bmc_write_data(struct kcs_bmc *kcs_bmc, u8 data)
 {
 	kcs_bmc->io_outputb(kcs_bmc, kcs_bmc->ioreg.odr, data);
 }
 
-static inline u8 read_status(struct kcs_bmc *kcs_bmc)
+static inline u8 kcs_bmc_read_status(struct kcs_bmc *kcs_bmc)
 {
 	return kcs_bmc->io_inputb(kcs_bmc, kcs_bmc->ioreg.str);
 }
 
-static inline void write_status(struct kcs_bmc *kcs_bmc, u8 data)
+static inline void kcs_bmc_write_status(struct kcs_bmc *kcs_bmc, u8 data)
 {
 	kcs_bmc->io_outputb(kcs_bmc, kcs_bmc->ioreg.str, data);
 }
 
-static void update_status_bits(struct kcs_bmc *kcs_bmc, u8 mask, u8 val)
+static void kcs_bmc_update_status(struct kcs_bmc *kcs_bmc, u8 mask, u8 val)
 {
 	kcs_bmc->io_updateb(kcs_bmc, kcs_bmc->ioreg.str, mask, val);
 }
 
 static inline void set_state(struct kcs_bmc *kcs_bmc, u8 state)
 {
-	update_status_bits(kcs_bmc, KCS_STATUS_STATE_MASK,
+	kcs_bmc_update_status(kcs_bmc, KCS_STATUS_STATE_MASK,
 					KCS_STATUS_STATE(state));
 }
 
 static void kcs_force_abort(struct kcs_bmc *kcs_bmc)
 {
 	set_state(kcs_bmc, ERROR_STATE);
-	read_data(kcs_bmc);
-	write_data(kcs_bmc, KCS_ZERO_DATA);
+	kcs_bmc_read_data(kcs_bmc);
+	kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
 
 	kcs_bmc->phase = KCS_PHASE_ERROR;
 	kcs_bmc->data_in_avail = false;
@@ -99,9 +99,9 @@ static void kcs_bmc_handle_data(struct kcs_bmc *kcs_bmc)
 	case KCS_PHASE_WRITE_DATA:
 		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
 			set_state(kcs_bmc, WRITE_STATE);
-			write_data(kcs_bmc, KCS_ZERO_DATA);
+			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
 			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
-						read_data(kcs_bmc);
+						kcs_bmc_read_data(kcs_bmc);
 		} else {
 			kcs_force_abort(kcs_bmc);
 			kcs_bmc->error = KCS_LENGTH_ERROR;
@@ -112,7 +112,7 @@ static void kcs_bmc_handle_data(struct kcs_bmc *kcs_bmc)
 		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
 			set_state(kcs_bmc, READ_STATE);
 			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
-						read_data(kcs_bmc);
+						kcs_bmc_read_data(kcs_bmc);
 			kcs_bmc->phase = KCS_PHASE_WRITE_DONE;
 			kcs_bmc->data_in_avail = true;
 			wake_up_interruptible(&kcs_bmc->queue);
@@ -126,34 +126,34 @@ static void kcs_bmc_handle_data(struct kcs_bmc *kcs_bmc)
 		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len)
 			set_state(kcs_bmc, IDLE_STATE);
 
-		data = read_data(kcs_bmc);
+		data = kcs_bmc_read_data(kcs_bmc);
 		if (data != KCS_CMD_READ_BYTE) {
 			set_state(kcs_bmc, ERROR_STATE);
-			write_data(kcs_bmc, KCS_ZERO_DATA);
+			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
 			break;
 		}
 
 		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len) {
-			write_data(kcs_bmc, KCS_ZERO_DATA);
+			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
 			kcs_bmc->phase = KCS_PHASE_IDLE;
 			break;
 		}
 
-		write_data(kcs_bmc,
+		kcs_bmc_write_data(kcs_bmc,
 			kcs_bmc->data_out[kcs_bmc->data_out_idx++]);
 		break;
 
 	case KCS_PHASE_ABORT_ERROR1:
 		set_state(kcs_bmc, READ_STATE);
-		read_data(kcs_bmc);
-		write_data(kcs_bmc, kcs_bmc->error);
+		kcs_bmc_read_data(kcs_bmc);
+		kcs_bmc_write_data(kcs_bmc, kcs_bmc->error);
 		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR2;
 		break;
 
 	case KCS_PHASE_ABORT_ERROR2:
 		set_state(kcs_bmc, IDLE_STATE);
-		read_data(kcs_bmc);
-		write_data(kcs_bmc, KCS_ZERO_DATA);
+		kcs_bmc_read_data(kcs_bmc);
+		kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
 		kcs_bmc->phase = KCS_PHASE_IDLE;
 		break;
 
@@ -168,9 +168,9 @@ static void kcs_bmc_handle_cmd(struct kcs_bmc *kcs_bmc)
 	u8 cmd;
 
 	set_state(kcs_bmc, WRITE_STATE);
-	write_data(kcs_bmc, KCS_ZERO_DATA);
+	kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
 
-	cmd = read_data(kcs_bmc);
+	cmd = kcs_bmc_read_data(kcs_bmc);
 	switch (cmd) {
 	case KCS_CMD_WRITE_START:
 		kcs_bmc->phase = KCS_PHASE_WRITE_START;
@@ -212,7 +212,7 @@ int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc)
 
 	spin_lock_irqsave(&kcs_bmc->lock, flags);
 
-	status = read_status(kcs_bmc);
+	status = kcs_bmc_read_status(kcs_bmc);
 	if (status & KCS_STATUS_IBF) {
 		if (!kcs_bmc->running)
 			kcs_force_abort(kcs_bmc);
@@ -350,7 +350,7 @@ static ssize_t kcs_bmc_write(struct file *filp, const char __user *buf,
 		kcs_bmc->data_out_idx = 1;
 		kcs_bmc->data_out_len = count;
 		memcpy(kcs_bmc->data_out, kcs_bmc->kbuffer, count);
-		write_data(kcs_bmc, kcs_bmc->data_out[0]);
+		kcs_bmc_write_data(kcs_bmc, kcs_bmc->data_out[0]);
 		ret = count;
 	} else {
 		ret = -EINVAL;
@@ -373,13 +373,11 @@ static long kcs_bmc_ioctl(struct file *filp, unsigned int cmd,
 
 	switch (cmd) {
 	case IPMI_BMC_IOCTL_SET_SMS_ATN:
-		update_status_bits(kcs_bmc, KCS_STATUS_SMS_ATN,
-				   KCS_STATUS_SMS_ATN);
+		kcs_bmc_update_status(kcs_bmc, KCS_STATUS_SMS_ATN, KCS_STATUS_SMS_ATN);
 		break;
 
 	case IPMI_BMC_IOCTL_CLEAR_SMS_ATN:
-		update_status_bits(kcs_bmc, KCS_STATUS_SMS_ATN,
-				   0);
+		kcs_bmc_update_status(kcs_bmc, KCS_STATUS_SMS_ATN, 0);
 		break;
 
 	case IPMI_BMC_IOCTL_FORCE_ABORT:
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
