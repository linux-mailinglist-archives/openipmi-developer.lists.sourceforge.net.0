Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9621D735C3A
	for <lists+openipmi-developer@lfdr.de>; Mon, 19 Jun 2023 18:37:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qBHt1-0005AO-6S;
	Mon, 19 Jun 2023 16:37:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jiasheng@iscas.ac.cn>) id 1qBBUX-0000cd-I7
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Jun 2023 09:48:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7QuoetbCBMFyzf/43ZLtTww0wPY4WdYPl7CoDsr8gsg=; b=O0OTte0Cgn1cP44dlHDIyC0CcT
 BgR/7Pi8TeiucIhGph3DD3dulmILVzZao1PVEIXhMpK+qjKHcDq2xvksODSi9BrgWWV2md73FGP03
 8V2JnDFuUGlRwk5KXjAEjLH9M4qQQHOX8LZ5qWEtbAOR7PBxVeMYs4biXpB2MxXgjy2I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7QuoetbCBMFyzf/43ZLtTww0wPY4WdYPl7CoDsr8gsg=; b=Q
 dnjSuAS+hEtDA4Ik4mzJ2meDo14eCkknw0OUbOAiyu0vLJpbDVFux3ep4x5SPS3HW5cr5HNrSFPrV
 zC11Yum3rdKFRn3Pjxvo6YHEMsV1TXBH8i23y2mAHJQzZ0AE4pHE/PWwTizG4yosGvMt7nlJi0PMf
 UytGSihM0/AHNsOk=;
Received: from smtp80.cstnet.cn ([159.226.251.80] helo=cstnet.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLS1.2:DHE-RSA-AES256-SHA:256)
 (Exim 4.95) id 1qBBUW-008Wxq-0b
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Jun 2023 09:48:09 +0000
Received: from ed3e173716be.home.arpa (unknown [124.16.138.129])
 by APP-01 (Coremail) with SMTP id qwCowAB3fQmjH5BkvNZfAQ--.20548S2;
 Mon, 19 Jun 2023 17:28:03 +0800 (CST)
From: Jiasheng Jiang <jiasheng@iscas.ac.cn>
To: minyard@acm.org,
	kamlakantp@marvell.com
Date: Mon, 19 Jun 2023 17:28:02 +0800
Message-Id: <20230619092802.35384-1-jiasheng@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: qwCowAB3fQmjH5BkvNZfAQ--.20548S2
X-Coremail-Antispam: 1UD129KBjvdXoWrur45XryDCFW5ur1rZFW7twb_yoWfurg_Cr
 yvqw13Gryvyr409w12yayfZryay3s8XryDWF1jqr1fC3s5Wwn3ZF9Fvr9ava1kArW5KF1D
 JrZFk34DAr1xGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUb2AFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2IYs7xG
 6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
 A2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_
 Cr1l84ACjcxK6I8E87Iv67AKxVWxJr0_GcWl84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
 0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xII
 jxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr
 1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkIecxEwVAFwVW8uwCF
 04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r
 18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_JF0_Jw1lIxkGc2Ij64vI
 r41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr
 1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvE
 x4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUIhFcUUUUU=
X-Originating-IP: [124.16.138.129]
X-CM-SenderInfo: pmld2xxhqjqxpvfd2hldfou0/
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add check for the return value of kstrdup() and return the
 error if it fails in order to avoid NULL pointer dereference. Fixes:
 c4436c9149c5
 ("ipmi_ssif: avoid registering duplicate ssif interface") Signed-off-by:
 Jiasheng Jiang <jiasheng@iscas.ac.cn> --- drivers/char/ipmi/ipmi_ssif.c |
 5 +++++ 1 file changed, 5 inserti [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-Headers-End: 1qBBUW-008Wxq-0b
X-Mailman-Approved-At: Mon, 19 Jun 2023 16:37:50 +0000
Subject: [Openipmi-developer] [PATCH] ipmi:ssif: Add check for kstrdup
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
Cc: openipmi-developer@lists.sourceforge.net,
 Jiasheng Jiang <jiasheng@iscas.ac.cn>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Add check for the return value of kstrdup() and return the error
if it fails in order to avoid NULL pointer dereference.

Fixes: c4436c9149c5 ("ipmi_ssif: avoid registering duplicate ssif interface")
Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
---
 drivers/char/ipmi/ipmi_ssif.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 3b921c78ba08..3b87a2726e99 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1600,6 +1600,11 @@ static int ssif_add_infos(struct i2c_client *client)
 	info->addr_src = SI_ACPI;
 	info->client = client;
 	info->adapter_name = kstrdup(client->adapter->name, GFP_KERNEL);
+	if (!info->adapter_name) {
+		kfree(info);
+		return -ENOMEM;
+	}
+
 	info->binfo.addr = client->addr;
 	list_add_tail(&info->link, &ssif_infos);
 	return 0;
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
