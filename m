Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4590377BAD
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 May 2021 07:43:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lfyhl-0005Oi-EF; Mon, 10 May 2021 05:43:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lfyhj-0005OZ-GB
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:43:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NRoX+CkOTTxsbn+R9nzd3/V2P1lI8thbzzsb3SjJ4xo=; b=jAQO82aRnKJYJIfmjiKRlH6Jvi
 P1CztfR528GU2cUV3HAky2hAlfA6VaYbAPqs+aYtxsnbqUMorwgG477uPZk4AyEktzwzd8Pi76eHd
 I6PZMF3eqY+Soq0i0Ho/zSxsXKr3G1eNS/vEisBJ+HmASX2QUHFWzSKN1OLCVzeXDbso=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NRoX+CkOTTxsbn+R9nzd3/V2P1lI8thbzzsb3SjJ4xo=; b=RpaUGEhmqxM7h+0s5XLz4oGJoO
 JY9dQkHta5S+yDTgOIBn7+2zgJbcabo5Gg9ll9Piynf7Hj1I52skwFdttw/XTNQualYGP2XtIUWHz
 /KZJs+8GEi/l0SkmUw6iLHKbPHhpISBHZLCJ2aRMcHyd81qCK6xBXm5WlWFirfuzLFCM=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lfyhb-000381-CO
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:43:44 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id B2C075804CB;
 Mon, 10 May 2021 01:43:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 10 May 2021 01:43:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=NRoX+CkOTTxsb
 n+R9nzd3/V2P1lI8thbzzsb3SjJ4xo=; b=oYMy0bFp1m5RFIXpWKlYJvg4dikID
 ubyUXLxr/0JZnIXBl77Xo6tavaVSbn829I0EQrMbN3E44kb0LldM6vagIpulO79M
 EgaHtC17S837wo0d3U/FP+4EUyptFO1UuXUR/+wrTgpIPdhT80x9gYXaSeiqmK3v
 oFbV2SHMn2GcykaU67k75O35CuL6MM9WBJBFukF8sL0YGjXhug2w07OlZEgKjD49
 XAOR/GRQ28DlbPqfl3WAecCKofuhkyHQGA4ibpHhPz9cDdtV21CKVeQeGs7tEwOp
 i5DBDfJ/px9Uq8vh88MHrOSybJzP+Kwq/Jx7LH9EssiDSSx3pX9hcjHeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=NRoX+CkOTTxsbn+R9nzd3/V2P1lI8thbzzsb3SjJ4xo=; b=ovXUI8qf
 QqRM3hk6gJ74FXBdq9jh4Y7xtyNC0qe84MSkVXrmhkxBtB6AYIqs1gpLjulwuh7X
 wGy07ytZHBvPO9/PqPq595mOZuKEtCAuE3HuFQh9Aq4WomaK82Fu2WuaU3VazhKI
 A9pfnRzLtx7w7D6aHHaiplCNIMIoxmbxBh1IK51Brm1Phy7qVdG+mzrHWB2FmSl0
 2Gu6L5fBwnaIESseYZ2jcL8MiFoPieWVyuTRGq6UfuSqAiQX8slPEpQlLe+WWWG2
 Jg5rjGOnr0lpIEodUXVsZD5Ci18X2i6fBBv/Z7thc/Nfst+AMIzOprpNaeX9347c
 ghONPs9tbpcnlw==
X-ME-Sender: <xms:AMiYYJ1XdZ49veIKbUG9XLqFEPW_FogvLMao6aVGLb-3zlR_24ibmQ>
 <xme:AMiYYAF4XxcxCvMwB-WzigOTuiXH9SPuJ331vWPTW06ibxIqpsjfcYZh2yFh70roc
 VYp01y1iuIoowPejA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdegjedgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecukfhppedvtdefrdehjedrvdduhedrkeen
 ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurh
 gvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:AMiYYJ5Wwy8pVGECZiO_gzyWsGplM1fBDT5LLld5Ewngs7V6bEB-Ug>
 <xmx:AMiYYG1BifiPqfLk1zl5Bsj5wE4E7vmnSVbezHh9E1_O02u0LPBDuQ>
 <xmx:AMiYYMGN-DVCT3sH9MVm0T5no6DGJEO-DgCUdU-rsPElTMzLEfVv4A>
 <xmx:AMiYYAFUdwa38JPxPLPLknLIERZJclDHgg5whJJl0O-tr1n_N3ZzgQ>
Received: from localhost.localdomain (unknown [203.57.215.8])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Mon, 10 May 2021 01:43:23 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Mon, 10 May 2021 15:12:00 +0930
Message-Id: <20210510054213.1610760-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210510054213.1610760-1-andrew@aj.id.au>
References: <20210510054213.1610760-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lfyhb-000381-CO
Subject: [Openipmi-developer] [PATCH v3 03/16] ipmi: kcs_bmc: Rename {read,
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
Cc: devicetree@vger.kernel.org, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 chiawei_wang@aspeedtech.com, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, robh+dt@kernel.org, arnd@arndb.de, zweiss@equinix.com,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Rename the functions in preparation for separating the IPMI chardev out
from the KCS BMC core.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Zev Weiss <zweiss@equinix.com>
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
