Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RA9gMm7ZT2qUpAIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Jul 2026 19:25:02 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5F7733CDB
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Jul 2026 19:25:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=EcKrcpfd;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=hqfXqlkN;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=QyAd5qM8;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20201202 header.b=J7KfLcIO;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:Message-Id:
	MIME-Version:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VSaKjOVb2ktSQx/HbunbCi/gifpsil2BpGd3Qd23jRw=; b=EcKrcpfdR0oOOSEvy/HoDeOF0o
	C6CMvtX+CZndX2olTn0Z9HxlnkAi1hFc+3nx9h6SAPTvVi24aikIC1eT4ng/5FouCkja7NB4MmiiE
	yZ5cxboAPbJkVIoywxjoK/+896+gb4CdeCbSfqERdTAtblMuExM8ayKdJXWKuwDF8J/g=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1whsUY-0001RK-3H;
	Thu, 09 Jul 2026 17:24:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+shankerwangmiao.gmail.com@kernel.org>)
 id 1whsUW-0001RB-9Y for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jul 2026 17:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gZBvAoD83JMvUQAarL7lj6Qur+BcYqxR/t8ny82Iigg=; b=hqfXqlkNTs0lSCHlPaa4QGkJ76
 keIxpbV7XoezVmphYWOxrnGKn4VE8yNsKV8+gZXVMv4LG2e5Th2rtb9GAuuPMxfaJRXFujnHDzvHh
 vBgx8xxDh05okFVfPm0qw+PrxlzONa9GhIg3mA6JEGoTTeVXs5/q/5Kj9NVmXlG04CuQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gZBvAoD83JMvUQAarL7lj6Qur+BcYqxR/t8ny82Iigg=; b=QyAd5qM8lMXqGK595uivKR7ffq
 WMus8q31IkjLpnU7Iqc3uiOq+VMU6FHnDg8e6AgxiMDCgrLk6oFWMoD43S2+isL7/90D+cj8yC1NC
 gwQDAuS2v+ophv3RF9A5qvUSgKnojj1c+GgzDH3JCakk5vQN3BnJQZ0GI0TMkUjb6Ios=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1whsUV-0006ri-E5 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jul 2026 17:24:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id BB18061836;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5E612C2BD05;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1783617885;
 bh=MPujsGswY9o6XsIxCG+x+4eNh8rHmoYYDBHfhV/qxT4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=J7KfLcIOA6pwcAbvrj11hFe1OJayktjgDcCeOQ3mNgYFWIoHmmqkDAv1TwNTyCaJO
 oK+p9WEA40ntm5QOK1ectE7u79Rni2a3xjRMQ5cO7lAUNIHrmAVy+F4W7g97FlJOVk
 H2hMknUKyxg2IuE2JYpMIruof57ngXxYkEpAxvv+Wfc1j36D9MpgEEkrNhPc/+rYIN
 dpij0nlhFsvEG139CoRkYXzUZHd02EaQtyNwTqrQBAaoC6WbPNY5GcXW8naXLYip1w
 JP1rwulkVSf9VoBKAbhbThs2KVAzlWBnQZcgVx2vPvmM3n0Uc5nE7PoKWBvTR9W5gw
 YgLilWEYslGZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 4D419C44501;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
Date: Fri, 10 Jul 2026 01:24:23 +0800
MIME-Version: 1.0
Message-Id: <20260710-ls2kbmc-mod-v3-7-ef718636e78e@gmail.com>
References: <20260710-ls2kbmc-mod-v3-0-ef718636e78e@gmail.com>
In-Reply-To: <20260710-ls2kbmc-mod-v3-0-ef718636e78e@gmail.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>, 
 Chong Qiao <qiaochong@loongson.cn>, Lee Jones <lee@kernel.org>, 
 Huacai Chen <chenhuacai@kernel.org>, Corey Minyard <corey@minyard.net>, 
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=8511;
 i=shankerwangmiao@gmail.com; s=20250715; h=from:subject:message-id;
 bh=lcZh8gArBlUsxVf/oSboZ+zg1zTqwHMktoD4mL9iQSE=;
 b=owEBbQKS/ZANAwAKAbAx48p7/tluAcsmYgBqT9lapq5khaFN5t6QpvCO7EmrAJt7/LoLmOLhZ
 pN+E6LzYpuJAjMEAAEKAB0WIQREqPWPgPJBxluezBOwMePKe/7ZbgUCak/ZWgAKCRCwMePKe/7Z
 bmT4D/wLU9InTMKUUyp2/bLKEKpnqaOr6VGnUXFusoxKIOwqr5s3iV5KSv/pIqBwq/WYlMatr7I
 yub6dS1YptIfC43MSEUBxsT24dEexF+eX61LhKgpVriapoYrYhfRqUmdFDUo54kftQvTBkVI281
 yMryA0nfLnsn3MaLWVBEaxiw0AnHGinvKTs0bLQQZwECh2CoOefd+S8ERymsVsSrk1k5Ypcy7rM
 pmuJQmE7qlrIY/I4kO5cvx8AfG9jSbP8GQXNrpa2uGQZOgBoX9Xwb/MjczmUUNxGUMBF60eaziM
 tnxt4/WRscUCvtlIIBgl/deI2g+qpbnsAEF8Shv4eoTcHB1AYawsokX24xk3v84GlVzPNs5Fhd4
 R9QiYHzSeNNcwlLvlHASs60SEaEDUx0XYqBHuP5u96ybR14CF4RYhmaHIulhaBLcl41Pc7YcRr6
 fY+3LUCPlk1saEphUJt1NmFHwFfM+B5JftqsYGM5KEiJw6NQs8aSttG3J7X43Y+DgvGBeO47X84
 8PYWVIC26AEkTp5Dp7NhE6E1en8PlZ+AvvYfqA4rfdkOqrintH2esa8ZPRljnhXTiHFjWdv35mT
 ZJnkYQsizb42tNcSjA3DXxSYU3XfGrPOxCabwYV5KpjM1SQK6V5+7M5yOpDMSwhvWgNEB/M/swF
 vrV5TMjcnmM+ZxA==
X-Developer-Key: i=shankerwangmiao@gmail.com; a=openpgp;
 fpr=6FAEFF06B7D212A774C60BFDFA0D166D6632EF4A
X-Endpoint-Received: by B4 Relay for shankerwangmiao@gmail.com/20250715
 with auth_id=462
X-Original-From: Miao Wang <shankerwangmiao@gmail.com>
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Miao Wang The reset event of BMC is captured through
 GPIO. However, this driver bypasses the GPIO framework and directly accesses
 the GPIO controller through the fixed address. When the same GPIO controller
 is [...] Content analysis details:   (2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1whsUV-0006ri-E5
Subject: [Openipmi-developer] [PATCH RFC v3 7/7] mfd: ls2kbmc: Capture the
 reset event of BMC through GPIO
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
From: Miao Wang via B4 Relay via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: shankerwangmiao@gmail.com
Cc: Miao Wang via B4 Relay <devnull+shankerwangmiao.gmail.com@kernel.org>,
 Yinbo Zhu <zhuyinbo@loongson.cn>, mfd@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 linux-gpio@vger.kernel.org, Xi Ruoyao <xry111@xry111.site>,
 WANG Xuerui <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net,
 Miao Wang <shankerwangmiao@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:zhoubinbin@loongson.cn,m:qiaochong@loongson.cn,m:lee@kernel.org,m:chenhuacai@kernel.org,m:corey@minyard.net,m:linusw@kernel.org,m:brgl@kernel.org,m:devnull+shankerwangmiao.gmail.com@kernel.org,m:zhuyinbo@loongson.cn,m:mfd@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:jiaxun.yang@flygoat.com,m:linux-gpio@vger.kernel.org,m:xry111@xry111.site,m:kernel@xen0n.name,m:openipmi-developer@lists.sourceforge.net,m:shankerwangmiao@gmail.com,m:devnull@kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20201202];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_mime];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[kernel.org,loongson.cn,lists.linux.dev,vger.kernel.org,flygoat.com,xry111.site,xen0n.name,lists.sourceforge.net,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[shankerwangmiao@gmail.com];
	TAGGED_RCPT(0.00)[openipmi-developer,shankerwangmiao.gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC5F7733CDB

From: Miao Wang <shankerwangmiao@gmail.com>

The reset event of BMC is captured through GPIO. However, this driver
bypasses the GPIO framework and directly accesses the GPIO controller
through the fixed address. When the same GPIO controller is also
exposed through ACPI and probed by the corresponding GPIO driver,
there would be a conflict between the two drivers.

This patch will try to find the GPIO through declared GPIO pin in the
_CRS resources of the ACPI node. If no such delaration is found, the
driver will fall back to search for the correct GPIO controller and pin
according to the fixed address and pin number. A possible DSDT
declaration for the GPIO pin might be as follows:

    Device (BMC0) {
        Name (_ADR, ...) // Match the PCI address of the BMC device
        // \_SB.GPO1 is the ACPI path of the GPIO controller
        Name (_CRS, ResourceTemplate () {
            GpioInt (Edge, ActiveLow, Exclusive, PullNone, 0,
                     "\\_SB.GPO1", 0) {
                14 // 14 is the GPIO pin number
            }
    }

Signed-off-by: Miao Wang <shankerwangmiao@gmail.com>
---
 drivers/mfd/ls2k-bmc-core.c | 158 +++++++++++++++++++++++++++++++-------------
 1 file changed, 111 insertions(+), 47 deletions(-)

diff --git a/drivers/mfd/ls2k-bmc-core.c b/drivers/mfd/ls2k-bmc-core.c
index 1466b314fc4e577fe5e31404444648b5b0447ebb..5a2644ff07fee05f4c8cbc54cb62abc2358c1820 100644
--- a/drivers/mfd/ls2k-bmc-core.c
+++ b/drivers/mfd/ls2k-bmc-core.c
@@ -26,6 +26,10 @@
 #include <linux/stop_machine.h>
 #include <linux/vt_kern.h>
 #include <linux/console.h>
+#include <linux/gpio/consumer.h>
+#include <linux/gpio/driver.h>
+#include <linux/gpio/property.h>
+#include <linux/gpio/machine.h>
 
 /* LS2K BMC resources */
 #define LS2K_DISPLAY_RES_START		(SZ_16M + SZ_2M)
@@ -81,18 +85,6 @@
 
 #define PCI_REG_STRIDE			0x4
 
-#define LS2K_BMC_RESET_GPIO		14
-#define LOONGSON_GPIO_REG_BASE		0x1FE00500
-#define LOONGSON_GPIO_REG_SIZE		0x18
-#define LOONGSON_GPIO_OEN		0x0
-#define LOONGSON_GPIO_FUNC		0x4
-#define LOONGSON_GPIO_INTPOL		0x10
-#define LOONGSON_GPIO_INTEN		0x14
-
-#define LOONGSON_IO_INT_BASE		16
-#define LS2K_BMC_RESET_GPIO_INT_VEC	(LS2K_BMC_RESET_GPIO % 8)
-#define LS2K_BMC_RESET_GPIO_GSI		(LOONGSON_IO_INT_BASE + LS2K_BMC_RESET_GPIO_INT_VEC)
-
 enum {
 	LS2K_BMC_DISPLAY,
 	LS2K_BMC_IPMI0,
@@ -186,6 +178,7 @@ struct ls2k_bmc_ddata {
 	struct work_struct bmc_reset_work;
 	struct ls2k_bmc_pci_data bmc_pci_data;
 	struct ls2k_bmc_bridge_pci_data bridge_pci_data;
+	struct gpio_desc *reset_gpio;
 };
 
 static bool ls2k_bmc_bar0_addr_is_set(struct pci_dev *pdev)
@@ -375,6 +368,90 @@ static void ls2k_bmc_save_pci_data(struct pci_dev *pdev, struct ls2k_bmc_ddata *
 	pci_read_config_dword(pdev, PCI_INTERRUPT_LINE, &ddata->bmc_pci_data.interrupt_line);
 }
 
+static struct fwnode_handle *gpio_chip_get_fwnode(struct gpio_chip *chip)
+{
+	if (chip->fwnode)
+		return chip->fwnode;
+	else if (chip->parent)
+		return chip->parent->fwnode;
+	else
+		return NULL;
+}
+
+static int ls2k_bmc_gpiochip_find(struct gpio_chip *gc, const void *data)
+{
+	struct acpi_device *adev;
+	struct list_head resource_list;
+	struct resource_entry *rentry;
+	struct fwnode_handle *fwnode = gpio_chip_get_fwnode(gc);
+	phys_addr_t start_addr = (phys_addr_t) data;
+	int ret, found = 0;
+
+	if (!is_acpi_node(fwnode))
+		goto out;
+
+	adev = to_acpi_device_node(fwnode);
+	if (!adev)
+		goto out;
+
+	INIT_LIST_HEAD(&resource_list);
+
+	ret = acpi_dev_get_memory_resources(adev, &resource_list);
+	if (ret < 0)
+		goto out;
+	rentry = list_first_entry_or_null(&resource_list, struct resource_entry, node);
+	if (!rentry)
+		goto free_resource_list;
+	if (rentry->res->start == start_addr)
+		found = 1;
+
+free_resource_list:
+	acpi_dev_free_resource_list(&resource_list);
+out:
+	return found;
+}
+
+static struct gpio_desc *ls2k_bmc_find_gpio(struct ls2k_bmc_ddata *ddata)
+{
+	/*
+	 * In conventional way, the GPIO should be obtained through ACPI or
+	 * device tree. However, when the information is not available,
+	 * we should find the GPIO according to the convention of the server
+	 * boards with LS2K BMC, the gpio signal relelecting the reset event
+	 * of the BMC should be connected to pin 14 of the GPIO input of
+	 * the first CPU node. The address of that GPIO controller is fixed.
+	 */
+	static const phys_addr_t LOONGSON_GPIO_REG_BASE = 0x1FE00500;
+	static const unsigned int LS2K_BMC_RESET_GPIO = 14;
+	int ret;
+	struct gpio_device *gdev __free(gpio_device_put) = NULL;
+	struct gpio_chip *gc;
+	struct property_entry ls2k_bmc_swnode_properties[2] = { 0 };
+
+	dev_dbg(ddata->dev, "Searching for GPIO chip at address %pa\n", &LOONGSON_GPIO_REG_BASE);
+
+	gdev = gpio_device_find((void *)LOONGSON_GPIO_REG_BASE, ls2k_bmc_gpiochip_find);
+
+	if (!gdev) {
+		dev_dbg(ddata->dev, "cannot find GPIO chip at address %pa, deferring\n",
+			&LOONGSON_GPIO_REG_BASE);
+		return ERR_PTR(-EPROBE_DEFER);
+	}
+
+	gc = gpio_device_get_chip(gdev);
+
+	ls2k_bmc_swnode_properties[0] = PROPERTY_ENTRY_GPIO("gpio",
+		gpio_chip_get_fwnode(gc), LS2K_BMC_RESET_GPIO, GPIO_ACTIVE_HIGH);
+
+	ret = device_create_managed_software_node(ddata->dev, ls2k_bmc_swnode_properties, NULL);
+	if (ret) {
+		dev_err(ddata->dev, "Failed to create software node for GPIO reset: %d\n", ret);
+		return ERR_PTR(ret);
+	}
+
+	return devm_gpiod_get_index(ddata->dev, NULL, 0, GPIOD_IN);
+}
+
 static void ls2k_bmc_cancel_wq(void *data)
 {
 	struct ls2k_bmc_ddata *ddata = data;
@@ -384,8 +461,7 @@ static void ls2k_bmc_cancel_wq(void *data)
 static int ls2k_bmc_init(struct ls2k_bmc_ddata *ddata)
 {
 	struct pci_dev *pdev = to_pci_dev(ddata->dev);
-	void __iomem *gpio_base;
-	int gpio_irq, ret, val;
+	int gpio_irq, ret;
 
 	ls2k_bmc_save_pci_data(pdev, ddata);
 
@@ -402,44 +478,32 @@ static int ls2k_bmc_init(struct ls2k_bmc_ddata *ddata)
 		return ret;
 	}
 
-	gpio_base = ioremap(LOONGSON_GPIO_REG_BASE, LOONGSON_GPIO_REG_SIZE);
-	if (!gpio_base)
-		return -ENOMEM;
-
-	/* Disable GPIO output */
-	val = readl(gpio_base + LOONGSON_GPIO_OEN);
-	writel(val | BIT(LS2K_BMC_RESET_GPIO), gpio_base + LOONGSON_GPIO_OEN);
-
-	/* Enable GPIO functionality */
-	val = readl(gpio_base + LOONGSON_GPIO_FUNC);
-	writel(val & ~BIT(LS2K_BMC_RESET_GPIO), gpio_base + LOONGSON_GPIO_FUNC);
-
-	/* Set GPIO interrupts to low-level active */
-	val = readl(gpio_base + LOONGSON_GPIO_INTPOL);
-	writel(val & ~BIT(LS2K_BMC_RESET_GPIO), gpio_base + LOONGSON_GPIO_INTPOL);
-
-	/* Enable GPIO interrupts */
-	val = readl(gpio_base + LOONGSON_GPIO_INTEN);
-	writel(val | BIT(LS2K_BMC_RESET_GPIO), gpio_base + LOONGSON_GPIO_INTEN);
+	ddata->reset_gpio = devm_gpiod_get_index_optional(&pdev->dev, NULL, 0, GPIOD_IN);
+	if (IS_ERR(ddata->reset_gpio)) {
+		ret = PTR_ERR(ddata->reset_gpio);
+		ddata->reset_gpio = NULL;
+		return dev_err_probe(ddata->dev, ret, "Failed to get GPIO pin for reset signal\n");
+	}
+	if (ddata->reset_gpio == NULL) {
+		ddata->reset_gpio = ls2k_bmc_find_gpio(ddata);
+		if (IS_ERR(ddata->reset_gpio)) {
+			ret = PTR_ERR(ddata->reset_gpio);
+			ddata->reset_gpio = NULL;
+			return dev_err_probe(ddata->dev, ret, "Failed to find GPIO pin for reset signal\n");
+		}
+	}
 
-	iounmap(gpio_base);
+	gpio_irq = gpiod_to_irq(ddata->reset_gpio);
 
-	/*
-	 * Since gpio_chip->to_irq is not implemented in the Loongson-3 GPIO driver,
-	 * acpi_register_gsi() is used to obtain the GPIO IRQ. The GPIO interrupt is a
-	 * watchdog interrupt that is triggered when the BMC resets.
-	 */
-	gpio_irq = acpi_register_gsi(NULL, LS2K_BMC_RESET_GPIO_GSI, ACPI_EDGE_SENSITIVE,
-				     ACPI_ACTIVE_LOW);
 	if (gpio_irq < 0)
-		return gpio_irq;
+		return dev_err_probe(ddata->dev, gpio_irq, "Failed to get IRQ for GPIO reset signal input\n");
 
-	ret = devm_request_irq(ddata->dev, gpio_irq, ls2k_bmc_interrupt,
-			       IRQF_SHARED | IRQF_TRIGGER_FALLING, "ls2kbmc gpio", ddata);
-	if (ret)
-		dev_err(ddata->dev, "Failed to request LS2KBMC GPIO IRQ %d.\n", gpio_irq);
+	ret = devm_request_irq(&pdev->dev, gpio_irq, ls2k_bmc_interrupt,
+			       IRQF_SHARED | IRQF_TRIGGER_FALLING, "ls2kbmc reset", ddata);
+
+	if (ret != 0)
+		return dev_err_probe(ddata->dev, ret, "Failed to request IRQ %d for GPIO reset signal input.\n", gpio_irq);
 
-	acpi_unregister_gsi(LS2K_BMC_RESET_GPIO_GSI);
 	return ret;
 }
 

-- 
2.49.0




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
