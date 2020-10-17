Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B30296FEB
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 Oct 2020 15:09:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kVwpD-0006qO-0C; Fri, 23 Oct 2020 13:09:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tiantao6@hisilicon.com>) id 1kTbRo-0003fK-VE
 for openipmi-developer@lists.sourceforge.net; Sat, 17 Oct 2020 01:55:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8D8g2Y84hErYivK8TVa/XKUV651zjvv4cT4jKL45dvU=; b=TUhOYon32u3UQX5+KuRbaI5APN
 0CgIwlllUdUOkk5n7TX20ek3vDOm9Cf2sBIznafbpbAtezq+D5z9pcWKENYMYA182bkFeMFOkXSaG
 ZWD+6EblWPaDCKcZG7XmUqihNS+4tOdFXIFtUyCQRm8ejdk6cvKx6OuUjI6bKb0H7Jtg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8D8g2Y84hErYivK8TVa/XKUV651zjvv4cT4jKL45dvU=; b=G
 mZ8MH6C0IlMMriJ9YcaCNRYrtRfrmqKjEPF8/SLPYtqmRaTuWJ1YXmekgUvBL6TEUzrM6s1pUkjnl
 twTWu3cOv5BkcIy7gvc9NAMfgFiUjavGvnGakjk9l1xWAZIbeA2L3Hkbs4YTTmgRGLdn6nxBAPzT8
 KkIy7vx9RXtFmXsU=;
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kTbRg-00D8ak-Nu
 for openipmi-developer@lists.sourceforge.net; Sat, 17 Oct 2020 01:55:52 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3A8BEC23779967992C84;
 Sat, 17 Oct 2020 09:39:31 +0800 (CST)
Received: from localhost.localdomain (10.69.192.56) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Sat, 17 Oct 2020 09:39:28 +0800
From: Tian Tao <tiantao6@hisilicon.com>
To: <minyard@acm.org>, <arnd@arndb.de>, <gregkh@linuxfoundation.org>,
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
Date: Sat, 17 Oct 2020 09:40:10 +0800
Message-ID: <1602898810-31783-1-git-send-email-tiantao6@hisilicon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.69.192.56]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hisilicon.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kTbRg-00D8ak-Nu
X-Mailman-Approved-At: Fri, 23 Oct 2020 13:09:40 +0000
Subject: [Openipmi-developer] [PATCH] ipmi_si: replace spin_lock_irqsave by
 spin_lock in hard IRQ
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

It is redundant to do irqsave and irqrestore in hardIRQ context.

Signed-off-by: Tian Tao <tiantao6@hisilicon.com>
---
 drivers/char/ipmi/ipmi_si_intf.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 45546ac..97452a8 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -1116,7 +1116,6 @@ static void smi_timeout(struct timer_list *t)
 irqreturn_t ipmi_si_irq_handler(int irq, void *data)
 {
 	struct smi_info *smi_info = data;
-	unsigned long   flags;
 
 	if (smi_info->io.si_type == SI_BT)
 		/* We need to clear the IRQ flag for the BT interface. */
@@ -1124,14 +1123,14 @@ irqreturn_t ipmi_si_irq_handler(int irq, void *data)
 				     IPMI_BT_INTMASK_CLEAR_IRQ_BIT
 				     | IPMI_BT_INTMASK_ENABLE_IRQ_BIT);
 
-	spin_lock_irqsave(&(smi_info->si_lock), flags);
+	spin_lock(&(smi_info->si_lock));
 
 	smi_inc_stat(smi_info, interrupts);
 
 	debug_timestamp("Interrupt");
 
 	smi_event_handler(smi_info, 0);
-	spin_unlock_irqrestore(&(smi_info->si_lock), flags);
+	spin_unlock(&(smi_info->si_lock));
 	return IRQ_HANDLED;
 }
 
-- 
2.7.4



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
