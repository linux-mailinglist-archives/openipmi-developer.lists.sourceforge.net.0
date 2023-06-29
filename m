Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DB77426FA
	for <lists+openipmi-developer@lfdr.de>; Thu, 29 Jun 2023 15:08:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qErNZ-0001qR-O8;
	Thu, 29 Jun 2023 13:08:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gongruiqi@huaweicloud.com>) id 1qEr5Z-00081E-2A
 for openipmi-developer@lists.sourceforge.net;
 Thu, 29 Jun 2023 12:49:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gky8pN1Xaa0OMsN+e9W7aWRjuBH7PEQ3mlT/Np4Ej2k=; b=F/jOofVZpkHx+DOya6Ssiy0Bf2
 83J3uP1/BeX4v/Gc1tFEMEASj40zHB/9y+R1f/fPjWUATCxCZrk0hxdE6dRCqT07SiJJFEoxyfVb4
 7LQdwX4G2euCMAbVDmKHtHqYQgt5sr980mM46+QDSUW73zZAAvBrLLqHcUY1SGN8vRa0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gky8pN1Xaa0OMsN+e9W7aWRjuBH7PEQ3mlT/Np4Ej2k=; b=a
 n5RliayXgE+naSWUYQF8W+PBVrK/PE/PYI3BdjMyphrW+IrToxe99+THW02XMy8/X19D2e5zy1us/
 6MYU4XFqF0G2WTlCYZaT7RiwVQcL3RmvDkxcUQch6x1rzYVE9ahC9zgHt2LqV2wQ65nsYUhIx6B4y
 mueBhcPdxxxmoimE=;
Received: from dggsgout11.his.huawei.com ([45.249.212.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qEr5V-000561-NF for openipmi-developer@lists.sourceforge.net;
 Thu, 29 Jun 2023 12:49:30 +0000
Received: from mail02.huawei.com (unknown [172.30.67.143])
 by dggsgout11.his.huawei.com (SkyGuard) with ESMTP id 4QsHpH3f9pz4f3kjl
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 29 Jun 2023 20:29:59 +0800 (CST)
Received: from ubuntu20.huawei.com (unknown [10.67.174.33])
 by APP1 (Coremail) with SMTP id cCh0CgDHLCcveZ1kP+JxMA--.20756S2;
 Thu, 29 Jun 2023 20:30:00 +0800 (CST)
From: "GONG, Ruiqi" <gongruiqi@huaweicloud.com>
To: Corey Minyard <minyard@acm.org>,
	Yi Yang <yiyang13@huawei.com>
Date: Thu, 29 Jun 2023 20:33:28 +0800
Message-Id: <20230629123328.2402075-1-gongruiqi@huaweicloud.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: cCh0CgDHLCcveZ1kP+JxMA--.20756S2
X-Coremail-Antispam: 1UD129KBjvJXoW7ZFWDZFyxCFy3try8Gry5CFg_yoW8uryxp3
 y5u34DCr4kJr47Ca17Xry7uF98Ja1DCF4UKF47Cw1UXF1DWFyjgr10q3ya9ryDKr4FqF4f
 Arsruw4rt3yUCw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUgKb4IE77IF4wAFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k2
 6cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4
 vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7Cj
 xVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x
 0267AKxVW0oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG
 6I80ewAv7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFV
 Cjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCj
 c4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4
 CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1x
 MIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_WFyUJV
 Cq3wCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r1j6r4UYxBI
 daVFxhVjvjDU0xZFpf9x07UWE__UUUUU=
X-CM-SenderInfo: pjrqw2pxltxq5kxd4v5lfo033gof0z/
X-CFilter-Loop: Reflected
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Yi Yang <yiyang13@huawei.com> Kmemleak reported the
 following leak info in try_smi_init(): unreferenced object 0xffff00018ecf9400
 (size 1024): comm "modprobe", pid 2707763, jiffies 4300851415 (age 773.308s)
 backtrace: [<000000004ca5b312>] __kmalloc+0x4b8/0x7b0 [<00000000953b1072>]
 try_smi_i [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qEr5V-000561-NF
X-Mailman-Approved-At: Thu, 29 Jun 2023 13:08:05 +0000
Subject: [Openipmi-developer] [PATCH] ipmi_si: fix a memleak in
 try_smi_init()
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
Cc: Xiu Jianfeng <xiujianfeng@huawei.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Wang Weiyang <wangweiyang2@huawei.com>,
 gongruiqi1@huawei.com, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Yi Yang <yiyang13@huawei.com>

Kmemleak reported the following leak info in try_smi_init():

unreferenced object 0xffff00018ecf9400 (size 1024):
  comm "modprobe", pid 2707763, jiffies 4300851415 (age 773.308s)
  backtrace:
    [<000000004ca5b312>] __kmalloc+0x4b8/0x7b0
    [<00000000953b1072>] try_smi_init+0x148/0x5dc [ipmi_si]
    [<000000006460d325>] 0xffff800081b10148
    [<0000000039206ea5>] do_one_initcall+0x64/0x2a4
    [<00000000601399ce>] do_init_module+0x50/0x300
    [<000000003c12ba3c>] load_module+0x7a8/0x9e0
    [<00000000c246fffe>] __se_sys_init_module+0x104/0x180
    [<00000000eea99093>] __arm64_sys_init_module+0x24/0x30
    [<0000000021b1ef87>] el0_svc_common.constprop.0+0x94/0x250
    [<0000000070f4f8b7>] do_el0_svc+0x48/0xe0
    [<000000005a05337f>] el0_svc+0x24/0x3c
    [<000000005eb248d6>] el0_sync_handler+0x160/0x164
    [<0000000030a59039>] el0_sync+0x160/0x180

The problem was that when an error occurred before handlers registration
and after allocating `new_smi->si_sm`, the variable wouldn't be freed in
the error handling afterwards since `shutdown_smi()` hadn't been
registered yet. Fix it by adding a `kfree()` in the error handling path
in `try_smi_init()`.

Cc: stable@vger.kernel.org # 4.19+
Fixes: 7960f18a5647 ("ipmi_si: Convert over to a shutdown handler")
Signed-off-by: Yi Yang <yiyang13@huawei.com>
Co-developed-by: GONG, Ruiqi <gongruiqi@huaweicloud.com>
Signed-off-by: GONG, Ruiqi <gongruiqi@huaweicloud.com>
---
 drivers/char/ipmi/ipmi_si_intf.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index abddd7e43a9a..5cd031f3fc97 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -2082,6 +2082,11 @@ static int try_smi_init(struct smi_info *new_smi)
 		new_smi->io.io_cleanup = NULL;
 	}
 
+	if (rv && new_smi->si_sm) {
+		kfree(new_smi->si_sm);
+		new_smi->si_sm = NULL;
+	}
+
 	return rv;
 }
 
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
