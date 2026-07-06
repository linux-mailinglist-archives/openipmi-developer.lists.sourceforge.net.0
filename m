Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KJzNJOMTS2qmLgEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 06 Jul 2026 04:33:07 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6307170C210
	for <lists+openipmi-developer@lfdr.de>; Mon, 06 Jul 2026 04:33:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=MhzgTe5I;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=b37eyy5T;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="B 4y/DyG";
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RFR6e2ojHokEeOWCE2buqkGOxhriYm9wHuZvYeWLSRk=; b=MhzgTe5IE0TGGWjo9ReH1zc+vq
	PpaXdxlpomkCXxpq3ri7U44cOde5zcm2HWmq+q4+xHZpqyX2sF4exK0KQ1zU9ax0My76O4aeaT0/P
	Y1OaN0BGHgqI9sTMaGfKK0eqPFOrK862I+3N+ycKbKWDwj+Q8xBvK/ax9ADjGrGHLaLQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wgZ8i-0001Nv-FZ;
	Mon, 06 Jul 2026 02:32:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubinbin@loongson.cn>) id 1wgZ8g-0001No-Ju
 for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jul 2026 02:32:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/h1xe91Au3Ufalvb2AL5mvivMf5TDT4u0iw3XoZ6IOs=; b=b37eyy5TP9ECc84c+qxG11UguM
 BzHOsJe3ivjkqZ8XBg4pj5vkzaaFPThjk8sqqSnKbFYfwjMGjoImhPYA36QALZopClyinfNRQQwSt
 hIBBVKrBfD2VB/zG5QBxzG/oHTIxKoHdiJe2ySAXGnOEzL0V1jKCqNzxsB1MGz4EV1Tw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/h1xe91Au3Ufalvb2AL5mvivMf5TDT4u0iw3XoZ6IOs=; b=B
 4y/DyGrq9TqRrzhPwMn9h14bTPss03B7DKmoV+TCZ6wiV361cn4NuWXi5K8RwViLiNO/Ks8YEAaAJ
 1acidzyoMBAGC8yX4tF7QHYybjRNLn5a6/cj93xGGU3JxvldsL2QgG8x7kvEL9eLUJXUVzGdsFakx
 7KZYz5m139YdJ/5I=;
Received: from mail.loongson.cn ([114.242.206.163])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1wgZ8e-00025j-7k for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jul 2026 02:32:54 +0000
Received: from loongson.cn (unknown [223.64.68.155])
 by gateway (Coremail) with SMTP id _____8Dxtuq0EEtqOz8AAA--.1239S3;
 Mon, 06 Jul 2026 10:19:32 +0800 (CST)
Received: from kernelserver (unknown [223.64.68.155])
 by front1 (Coremail) with SMTP id qMiowJCxIuSlEEtqqqYBAA--.10129S2;
 Mon, 06 Jul 2026 10:19:18 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>,
 Chong Qiao <qiaochong@loongson.cn>
Date: Mon,  6 Jul 2026 10:19:09 +0800
Message-ID: <20260706021909.2346535-1-zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CM-TRANSID: qMiowJCxIuSlEEtqqqYBAA--.10129S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/1tbiAQEACGpJ200Q5wAAsK
X-Coremail-Antispam: 1Uk129KBj93XoWxZFy5Aw13Wr1UXryfAFy7urX_yoW5ur4kpa
 yrZ34Y9ry5tFWxXa9ayr4fuF9Yyw1FqrWUGF4fAwn8Zwn8uayjyw1Skan8XF90gFykKFy5
 trs5JF1I9a45ZFcCm3ZEXasCq-sJn29KB7ZKAUJUUUUx529EdanIXcx71UUUUU7KY7ZEXa
 sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
 0xBIdaVrnRJUUUB0b4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
 IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
 e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_JFI_Gr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
 0_Jr0_Gr1l84ACjcxK6I8E87Iv67AKxVW8JVWxJwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_
 Gr0_Gr1UM2kKe7AKxVWUAVWUtwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07AIYI
 kI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUAVWU
 twAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI4
 8JMxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j
 6r4UMxCIbckI1I0E14v26r126r1DMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwV
 AFwI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv2
 0xvE14v26r1I6r4UMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4
 v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AK
 xVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxUcbAwUUUUU
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use pointers annotated with the __iomem marker for all iomem
 map calls, and creates a local copy of the mapped IO memory for future access
 in the code. memcpy_fromio() and memcpy_toio() are used to re [...] 
 Content analysis details:   (1.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE2           RBL: IP Subnet Listed in UCEPROTECT Level 2
 [223.64.68.155 listed in dnsbl-2.uceprotect.net]
X-Headers-End: 1wgZ8e-00025j-7k
Subject: [Openipmi-developer] [PATCH v3] mfd: ls2kbmc: mfd: ls2kbmc: Fix
 iomem pointer handling in video mode parsing
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
Cc: jeffbai@aosc.io, zhuyunfei@loongson.cn, kernel test robot <lkp@intel.com>,
 Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>,
 mfd@lists.linux.dev, linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 loongarch@lists.linux.dev, openipmi-developer@lists.sourceforge.net,
 Xuerui Wang <kernel@xen0n.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[loongson.cn];
	FORGED_RECIPIENTS(0.00)[m:zhoubb.aaron@gmail.com,m:chenhuacai@loongson.cn,m:lee@kernel.org,m:minyard@acm.org,m:qiaochong@loongson.cn,m:jeffbai@aosc.io,m:zhuyunfei@loongson.cn,m:lkp@intel.com,m:zhoubinbin@loongson.cn,m:chenhuacai@kernel.org,m:mfd@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:loongarch@lists.linux.dev,m:openipmi-developer@lists.sourceforge.net,m:kernel@xen0n.name,m:zhoubbaaron@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,loongson.cn,kernel.org,acm.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[zhoubinbin@loongson.cn,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x];
	FROM_NEQ_ENVFROM(0.00)[zhoubinbin@loongson.cn,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6307170C210

Use pointers annotated with the __iomem marker for all iomem map calls,
and creates a local copy of the mapped IO memory for future access in
the code. memcpy_fromio() and memcpy_toio() are used to read/write data
from/to mapped IO memory

Cc: stable@vger.kernel.org # v6.18+
Fixes: 0d64f6d1ffe9 ("mfd: ls2kbmc: Introduce Loongson-2K BMC core driver")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202603021730.Yy3QXYTw-lkp@intel.com/
Closes: https://lore.kernel.org/oe-kbuild-all/202606120639.WG6eb8VU-lkp@intel.com/
Reviewed-by: Huacai Chen <chenhuacai@loongson.cn>
Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
V3:
 - Reduce the range of `ioremap` from `SZ_16M` to `SZ_64`;
 - Define a new variable `pos` to iterate through the string;
 - Add failure handling for `strncmp()`.

Link to V2:
https://lore.kernel.org/all/20260624085550.1508771-1-zhoubinbin@loongson.cn/

V2:
 - Add the missing memcpy_fromio();
 - Drop the unnecessary `buf` variable.

Link to V1:
https://lore.kernel.org/all/20260616115530.4012675-1-zhoubinbin@loongson.cn/

 drivers/mfd/ls2k-bmc-core.c | 29 ++++++++++++++++++++++-------
 1 file changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/mfd/ls2k-bmc-core.c b/drivers/mfd/ls2k-bmc-core.c
index 408056bfb2fe..a2aee2131529 100644
--- a/drivers/mfd/ls2k-bmc-core.c
+++ b/drivers/mfd/ls2k-bmc-core.c
@@ -66,6 +66,9 @@
 /* Maximum time to wait for U-Boot and DDR to be ready with ms. */
 #define LS2K_BMC_RESET_WAIT_TIME	10000
 
+/* The length of the LS2K BMC display resolution string stored in PCI BAR0 */
+#define LS2K_RESOLUTION_STR_LEN		SZ_64
+
 /* It's an experience value */
 #define LS7A_BAR0_CHECK_MAX_TIMES	2000
 
@@ -427,27 +430,39 @@ static int ls2k_bmc_init(struct ls2k_bmc_ddata *ddata)
  */
 static int ls2k_bmc_parse_mode(struct pci_dev *pdev, struct simplefb_platform_data *pd)
 {
-	char *mode;
+	char *mode __free(kfree) = NULL;
+	void __iomem *base;
+	char *pos = NULL;
 	int depth, ret;
 
 	/* The last 16M of PCI BAR0 is used to store the resolution string. */
-	mode = devm_ioremap(&pdev->dev, pci_resource_start(pdev, 0) + SZ_16M, SZ_16M);
+	base = devm_ioremap(&pdev->dev, pci_resource_start(pdev, 0) + SZ_16M,
+			    LS2K_RESOLUTION_STR_LEN);
+	if (!base)
+		return -ENOMEM;
+
+	mode = kmalloc(LS2K_RESOLUTION_STR_LEN, GFP_KERNEL);
 	if (!mode)
 		return -ENOMEM;
 
+	memcpy_fromio(mode, base, LS2K_RESOLUTION_STR_LEN);
+
 	/* The resolution field starts with the flag "video=". */
-	if (!strncmp(mode, "video=", 6))
-		mode = mode + 6;
+	if (strncmp(mode, "video=", 6)) {
+		dev_err(&pdev->dev, "Simpledrm resolution missing or corrupt!\n");
+		return -EINVAL;
+	}
 
-	ret = kstrtoint(strsep(&mode, "x"), 10, &pd->width);
+	pos = mode + 6;
+	ret = kstrtoint(strsep(&pos, "x"), 10, &pd->width);
 	if (ret)
 		return ret;
 
-	ret = kstrtoint(strsep(&mode, "-"), 10, &pd->height);
+	ret = kstrtoint(strsep(&pos, "-"), 10, &pd->height);
 	if (ret)
 		return ret;
 
-	ret = kstrtoint(strsep(&mode, "@"), 10, &depth);
+	ret = kstrtoint(strsep(&pos, "@"), 10, &depth);
 	if (ret)
 		return ret;
 

base-commit: d5d2d7a8d8be18681a0864f58e3875f1c639e11c
-- 
2.52.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
