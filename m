Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 029D2BDDEC2
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Oct 2025 12:09:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n2LkqrrFyoNqtf1gg9ED3yb+daf/PJHKsVZMrznOk7I=; b=AwbkeBlbMuANHSu1uiXqIvkkQ/
	sYrEEhKGNHP9wpWj4JQOSqNUXwZU7m+elVOrG3E6+nqNaGdejZMYPivJFyCfnuRoAO4CLj3mks92U
	d4+Swkq0loSiXN53UJ9e8L9Fypngo+1f36DZf3QhmO63HUFF7vgZwovIUCj3yorxOtmc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v8yRs-0000xx-Gz;
	Wed, 15 Oct 2025 10:09:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubinbin@loongson.cn>) id 1v8yRq-0000xo-Lp
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Oct 2025 10:09:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v42tR3WJch95zMAAuu6Hl+JLSMy908PrTsuoaq5WQrU=; b=PF2RsfuFuVYFOy/VPPmJ1ur0Yw
 GvPaVOR0mwQrarpVD96LcuTX3uajW67V76uFg8DgUL9ytnQh4iEyZ7s5jv9NHKG8LlsIOvBNCzZPK
 nVihWkIwFMMLPcD/ooLzJRDvzQZE6W6Fuy+FxMr8znDeDu9PJ3GShLOJp5bdUxWu+GI0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=v42tR3WJch95zMAAuu6Hl+JLSMy908PrTsuoaq5WQrU=; b=Q
 UYiQP9vavXQKrV13gqhmRblahId/x4XinXjfEuALHJDv2rhLhrKARInAJraFDVZXl6EnngIqelY00
 Bnj+f1Mvlam+76BLjk3GljH89Eoc6hbuoZEzEAfTAVQIp896cZHHtCHO+xUxN+AJuGEfe4HE2yYnI
 PDCDzLhHo00hFaS0=;
Received: from mail.loongson.cn ([114.242.206.163])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1v8yRp-00071a-Pd for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Oct 2025 10:09:34 +0000
Received: from loongson.cn (unknown [223.64.68.198])
 by gateway (Coremail) with SMTP id _____8Bx1tC3b+9oVWEWAA--.47911S3;
 Wed, 15 Oct 2025 17:56:07 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.198])
 by front1 (Coremail) with SMTP id qMiowJAxecC1b+9oqIDlAA--.25024S2;
 Wed, 15 Oct 2025 17:56:07 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>
Date: Wed, 15 Oct 2025 17:55:56 +0800
Message-ID: <20251015095556.3736330-1-zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CM-TRANSID: qMiowJAxecC1b+9oqIDlAA--.25024S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/1tbiAgEQCGjvN5AGfwAAsC
X-Coremail-Antispam: 1Uk129KBj9xXoW7Xr4ftr43CF1UuF45uw45Jwc_yoWfJrbE9r
 1qv3yxWr15Cr97J3y0gFsaqrWaq3yfJF1Fk3Zxtwn3Aa4xtwn8JrWqya9ag3W5C39xWFZI
 qay7Wa4fCr1xuosvyTuYvTs0mTUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUj1kv1TuYvT
 s0mT0YCTnIWjqI5I8CrVACY4xI64kE6c02F40Ex7xfYxn0WfASr-VFAUDa7-sFnT9fnUUI
 cSsGvfJTRUUUbzAYFVCjjxCrM7AC8VAFwI0_Jr0_Gr1l1xkIjI8I6I8E6xAIw20EY4v20x
 vaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxS
 w2x7M28EF7xvwVC0I7IYx2IY67AKxVWUCVW8JwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxV
 WUJVW8JwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0
 oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07AIYIkI8VC2zVCFFI0UMc02F4
 0EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_
 Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JMxAIw28IcxkI7VAKI4
 8JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xv
 wVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjx
 v20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20E
 Y4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267
 AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxUzsqWUUUUU
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When merging the Loongson-2K BMC driver, temporarily removed
 the addition of the IPMI driver entry in MAINTAINERS to avoid conflicts.
 This needs to be fixed as soon as possible. Now, adding myself as maintainer
 for the Loongson-2K IPMI driver. 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1v8yRp-00071a-Pd
Subject: [Openipmi-developer] [PATCH] MAINTAINERS: Add entry on Loongson-2K
 IPMI driver
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
Cc: Binbin Zhou <zhoubinbin@loongson.cn>,
 openipmi-developer@lists.sourceforge.net, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

When merging the Loongson-2K BMC driver, temporarily removed the
addition of the IPMI driver entry in MAINTAINERS to avoid conflicts.
This needs to be fixed as soon as possible.

Now, adding myself as maintainer for the Loongson-2K IPMI driver.

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 46126ce2f968..053295599785 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14660,6 +14660,7 @@ LOONGSON-2K Board Management Controller (BMC) DRIVER
 M:	Binbin Zhou <zhoubinbin@loongson.cn>
 M:	Chong Qiao <qiaochong@loongson.cn>
 S:	Maintained
+F:	drivers/char/ipmi/ipmi_si_ls2k.c
 F:	drivers/mfd/ls2k-bmc-core.c
 
 LOONGSON EDAC DRIVER

base-commit: d27fea27a307656f0b55d6b9ac24caa40c7e4181
-- 
2.47.3



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
