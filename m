Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AllFLf2t2mfXQEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 Mar 2026 13:25:27 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A255299731
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 Mar 2026 13:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-Id:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DLnP+17AMD6P2wHvG9hDrOVNywk6qB+61kQEegIlDok=; b=XQBiiFd8nQk+IbROmA/Lvie+Yy
	iRwRdAJK/9WdkRcLxrhk9Yswr0zYwGyTrp430m/PMYitI2QP6dw2f+fmzVnrp/PQOFeXZHPR4clnF
	JqxzDfcZyvJlA3Anvy+2zP8sHgQlaR4SotsWzcwtHsshDdp45/AMwT/I2PRedkj9ZNj4=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w270V-0005di-Sr;
	Mon, 16 Mar 2026 12:25:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pengpeng.hou@isrc.iscas.ac.cn>) id 1vzWzR-0004b9-Ep
 for openipmi-developer@lists.sourceforge.net;
 Mon, 09 Mar 2026 09:33:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2wmLeIakohbssMUFCg/E4ciKdtGR9xr2vc4p7yZ2G7s=; b=TXsRD4y/jQBhvYD/sqH2CKmad9
 RFt699PBdREWogC+Nuxv+9YOXetWZIBf4MD/725EVqh541IVe+Ayqs9f7tqVKmF8cBWnztRHrauNY
 OENZbQvPzgtmEF7VHtOD0Zx4SLnqczzWrfttb6bb5Df6ZvoLjOErPIOH6vsJ4e1TnUNQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2wmLeIakohbssMUFCg/E4ciKdtGR9xr2vc4p7yZ2G7s=; b=N
 sZPIiDera5ULH/8g2DXjHD5mYxPtBHop8JReXBCMdCqnVVEfM3TzceFcF6rKzpRaTmzAcYeOBeHQu
 ZPxh9eQ2esFwyWG0LelNK34VWn6R+O5kyBPmYbnSwZJEaI5tMaK7sRZJ0HbeTvWX9+d0AAWBVj2WU
 V4YX+Z0Ovh5pQrQE=;
Received: from smtp25.cstnet.cn ([159.226.251.25] helo=cstnet.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps (TLS1.2:DHE-RSA-AES256-SHA:256)
 (Exim 4.95) id 1vzWzQ-0004ih-KY
 for openipmi-developer@lists.sourceforge.net;
 Mon, 09 Mar 2026 09:33:29 +0000
Received: from localhost.localdomain (unknown [210.73.43.101])
 by APP-05 (Coremail) with SMTP id zQCowAAntwpKj65p6erxCQ--.45509S2;
 Mon, 09 Mar 2026 17:13:46 +0800 (CST)
From: Pengpeng Hou <pengpeng.hou@isrc.iscas.ac.cn>
To: Corey Minyard <corey@minyard.net>
Date: Mon,  9 Mar 2026 09:13:32 +0000
Message-Id: <20260309091332.720315-1-pengpeng.hou@isrc.iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: zQCowAAntwpKj65p6erxCQ--.45509S2
X-Coremail-Antispam: 1UD129KBjvJXoW7CryrJF17CFy8AFWkCFy7trb_yoW8XF1xpF
 48A34q9r48GF1jg3y0v34rua95X3s8W34rtrW7A34DuFs0qa4FgF1a9a4aqryDGFyjgF43
 tFnavw1fuF18Ca7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUkS14x267AKxVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26r1j6r1xM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
 6F4UM28EF7xvwVC2z280aVAFwI0_Jr0_Gr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r4j6r
 4UJwAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
 I7IYx2IY67AKxVWUXVWUAwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r
 4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCY02Avz4vE14v_GFWl
 42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJV
 WUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r126r1DMIIYrxkI7VAK
 I48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F
 4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY
 6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfU1zuWDUUUU
X-Originating-IP: [210.73.43.101]
X-CM-SenderInfo: pshqw1hhqjhx1rx6x21ufox2xfdvhtffof0/
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In current linux.git (1954c4f01220), ipmi_si_irq_handler()
 is defined and declared unconditionally. However, its only in-tree caller
 is the ACPI GPE helper in drivers/char/ipmi/ipmi_si_platform.c, whi [...]
 Content analysis details:   (0.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1vzWzQ-0004ih-KY
X-Mailman-Approved-At: Mon, 16 Mar 2026 12:25:14 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: scope ipmi_si_irq_handler() to
 CONFIG_ACPI
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
Cc: Pengpeng Hou <pengpeng.hou@isrc.iscas.ac.cn>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[171];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:pengpeng.hou@isrc.iscas.ac.cn,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	DMARC_NA(0.00)[iscas.ac.cn];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[pengpeng.hou@isrc.iscas.ac.cn,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pengpeng.hou@isrc.iscas.ac.cn,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	NEURAL_HAM(-0.00)[-1.000];
	HAS_XOIP(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim,isrc.iscas.ac.cn:mid]
X-Rspamd-Queue-Id: 5A255299731
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In current linux.git (1954c4f01220), ipmi_si_irq_handler() is
defined and declared unconditionally. However, its only in-tree caller
is the ACPI GPE helper in drivers/char/ipmi/ipmi_si_platform.c, which
lives inside #ifdef CONFIG_ACPI.

Match the helper declaration and definition to that scope by wrapping
them in #ifdef CONFIG_ACPI. This fixes the config-scope mismatch and
reduces unnecessary code footprint for non-ACPI systems.

Signed-off-by: Pengpeng Hou <pengpeng.hou@isrc.iscas.ac.cn>
---
diff --git a/drivers/char/ipmi/ipmi_si.h b/drivers/char/ipmi/ipmi_si.h
--- a/drivers/char/ipmi/ipmi_si.h
+++ b/drivers/char/ipmi/ipmi_si.h
@@
 int ipmi_si_add_smi(struct si_sm_io *io);
+#ifdef CONFIG_ACPI
 irqreturn_t ipmi_si_irq_handler(int irq, void *data);
+#endif
 void ipmi_irq_start_cleanup(struct si_sm_io *io);
 int ipmi_std_irq_setup(struct si_sm_io *io);
 void ipmi_irq_finish_setup(struct si_sm_io *io);
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@
 	spin_unlock_irqrestore(&(smi_info->si_lock), flags);
 }
 
+#ifdef CONFIG_ACPI
 irqreturn_t ipmi_si_irq_handler(int irq, void *data)
 {
 	struct smi_info *smi_info = data;
 	unsigned long   flags;
@@
 
 	return IRQ_HANDLED;
 }
+#endif
 
 static unsigned int ipmi_shift_irq_cleanup(unsigned int cleanup_period,
 					   struct si_sm_io *io)
 {



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
