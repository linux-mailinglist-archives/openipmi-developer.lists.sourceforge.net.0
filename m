Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4688AE2272
	for <lists+openipmi-developer@lfdr.de>; Fri, 20 Jun 2025 20:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zxBqpMBiTuUZ3hOWs+QGMG/n82kkeNoKWEWiDincN/s=; b=VOM96GiOzdIyQeZWEdH3UvfGuT
	pIU8v4sVVMinwfq/1JiWOFso96WM0wgXmtHQgm1ljV+bfTkQfyy3Qm4I6dASTAJc5JmHU+bUXxEI7
	yP7J8RCykV4d/0901IP+d4dy8pZzlsOOdyVYQIbWlKDB59kbzoArEr3Ob+jGmKqQJGSM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uSglQ-0006ql-Aj;
	Fri, 20 Jun 2025 18:47:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uSglO-0006qd-F7
 for openipmi-developer@lists.sourceforge.net;
 Fri, 20 Jun 2025 18:46:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s8NHYIJCrgO6+UfKO/xAGNidF0eDJbqLbRizmGJ3qXI=; b=mYJt+ZPFZG3HpACfn4xVBF+GUj
 h1xJON2LW9WfhKpv9/7RP3q6mER221WS4hn4GWsCAOA3a8D4S9fVIrOBamWzK14TXp5NKWJVc6xQa
 +uDDOaDpDVqier5puVqRjuII7cjxawtElo6iv8Y1hT9J9CVicthkwnb4e/NNwoOfvltI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s8NHYIJCrgO6+UfKO/xAGNidF0eDJbqLbRizmGJ3qXI=; b=kJIH0Q0uxK3DOXW7WiJRLc7h94
 hfEKPp0KIewuRwZPl5JLWW/MA1x/XuuXNgH3y3b8ug6YdS5/W3DaxER5tBIUAr0B0F9sMwpzV76af
 xPhLNlg5H8dXnP65Ux8jU2se2KfwtThgHne7csvjKAiRtQd6NQrXLULZu0lXxL94KpZA=;
Received: from mail-oa1-f46.google.com ([209.85.160.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uSglN-0008LQ-MO for openipmi-developer@lists.sourceforge.net;
 Fri, 20 Jun 2025 18:46:58 +0000
Received: by mail-oa1-f46.google.com with SMTP id
 586e51a60fabf-2eb5cbe41e1so1315488fac.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 20 Jun 2025 11:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1750445212; x=1751050012;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=s8NHYIJCrgO6+UfKO/xAGNidF0eDJbqLbRizmGJ3qXI=;
 b=P0aKFPo6ToJOz6Z1c5ZJHkWeJS6C9xIwDm+TBaWbUvszoX4GaPYqXc+FTX5DTw1l9U
 vB6/WLuQFo0TDtggRHzQBQY3nPRG//6BDM5ciFIipCOUp+q6bTDRCGYZKjmz9S7/J9jw
 Z7OPb6v5DfRSeXh5x4/KcxZAChXr91ZQOkODs6l0kbf5r5dk/iATKSmRoKUnyJr0hcA/
 pix8etp6te/3Ao7bxQtaj8y57OdCvxwnegc9icMzyJ74MT7pbZV0NdqY/fAfcWqLQgBv
 NIvLhkPM0npA+0bFH8+zPfC6yk7gcp+t7Jsiaf3ND9g2RN0auUd8/p3z2zeyNVmeZdPk
 tBdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750445212; x=1751050012;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=s8NHYIJCrgO6+UfKO/xAGNidF0eDJbqLbRizmGJ3qXI=;
 b=upx6qmHAU6qHEDpW1LkIgbR2gTosIxk6akb098ub/I6WxMyLUDflvV0BFtzFsHerFU
 Z/bvbUKuRxXGpnLLq79WFIlUIVNipf7mawACfVzEJ0hN67ZdpU8FN0gyLOk6VPMU3g5b
 0Sqd+EwSsuk8bvJ1AinaJkSpr4JT3c57rmoqormLUpJARfsdVVSH3ack0nAfqDb3Q7Om
 yAy1WSBX10MmmRiKLN3JCk27Hy+d9ygFWtjih/I02rlJ4F5kqau60gRBiRaT6be9uXgl
 kreKDwO8jtqfpX5jw0RHwI22CvniynHDgXMFi/7RyyPwwkh2cBVZ7nBvBx6hOlhfkZtV
 aZhg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV23wp2u1dsVGBZDFj9VEf2qvMsZXY2sB6f0qLTsa6c20ZsIYo/x08fqiDg8iCrcguIV6/gbYTLqVNQfWVQyS7ciX4=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwWeqmN4dvdSve7MMRF5zy+A+sMKZJCXNO930b4QM/cYBMJbRhT
 HMFEk4TrHtgnwD4SdmIgJJz7aCwvlCUT0UyXecT3JH1FM6EaPz31LYmb2umaNG529KA=
X-Gm-Gg: ASbGncv3GMVIYoAIjNIqT/4jpsyXosLrL0RZmvLH+pzPQiQwy1uWwuYTl3EDSHR9Dpn
 8JapBKRHiQ3NHDjUgyuntJvxnvfyPbr1s53UUbaziXAFCNuM8l81deYYaLdd5GCV+iL1aKLLFqz
 HTAzV5NWYPfaypOO0yW4HBt4jK/mTnFKvru5ZwhTH3v/4el9tDaeo94gZOiKouMJ3LUH9uxw4Jk
 Zlrpf4GfB+hYhl2QLsQ9rs/boFP5bEuCwzfTnFsqsCVEcpsLTGj8Tmz8kywJ7uqUu31NEcBGCNv
 MrY6Lx0qsU1VsC5Y4O6b2zzWmXyXLzD/sAObZB+kZ6SNTn0+SitlgCkF2GLLZBFgPD34pNZ/1OI
 =
X-Google-Smtp-Source: AGHT+IGvXifjETCnN4g1olyDwWNAcDk+oFv5m2B4XET98iABiZega1zQLzY80woia5ktb/6ap2w1Cg==
X-Received: by 2002:a05:6870:d288:b0:2ea:73fb:7850 with SMTP id
 586e51a60fabf-2eeee4cb6b9mr2820332fac.24.1750445211862; 
 Fri, 20 Jun 2025 11:46:51 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:680:2e07:b628:1be4])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-2ee6655a2c7sm491389fac.17.2025.06.20.11.46.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Jun 2025 11:46:51 -0700 (PDT)
Date: Fri, 20 Jun 2025 13:46:46 -0500
From: Corey Minyard <corey@minyard.net>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Message-ID: <aFWslonzXrSfTASW@mail.minyard.net>
References: <cover.1750301674.git.zhoubinbin@loongson.cn>
 <82cbc8558f15981e0953ab229d2afcc5501f982c.1750301674.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82cbc8558f15981e0953ab229d2afcc5501f982c.1750301674.git.zhoubinbin@loongson.cn>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 20, 2025 at 10:06:27AM +0800, Binbin Zhou wrote:
 > The Loongson-2K Board Management Controller provides an PCIe interface
 > to the host to access the feature implemented in the BMC. > > Th [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.46 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uSglN-0008LQ-MO
Subject: Re: [Openipmi-developer] [PATCH v5 1/3] mfd: ls2kbmc: Introduce
 Loongson-2K BMC core driver
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
Reply-To: corey@minyard.net
Cc: Chong Qiao <qiaochong@loongson.cn>, jeffbai@aosc.io,
 Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>,
 kexybiscuit@aosc.io, Binbin Zhou <zhoubb.aaron@gmail.com>,
 Huacai Chen <chenhuacai@kernel.org>, linux-kernel@vger.kernel.org,
 loongarch@lists.linux.dev, wangyao@lemote.com, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net, Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jun 20, 2025 at 10:06:27AM +0800, Binbin Zhou wrote:
> The Loongson-2K Board Management Controller provides an PCIe interface
> to the host to access the feature implemented in the BMC.
> 
> The BMC is assembled on a server similar to the server machine with
> Loongson-3 CPU. It supports multiple sub-devices like DRM and IPMI.
> 
> Reviewed-by: Huacai Chen <chenhuacai@loongson.cn>
> Co-developed-by: Chong Qiao <qiaochong@loongson.cn>
> Signed-off-by: Chong Qiao <qiaochong@loongson.cn>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  drivers/mfd/Kconfig         |  11 +++
>  drivers/mfd/Makefile        |   2 +
>  drivers/mfd/ls2k-bmc-core.c | 156 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 169 insertions(+)
>  create mode 100644 drivers/mfd/ls2k-bmc-core.c
> 
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 96992af22565..a1081c4211b0 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -2389,6 +2389,18 @@ config MFD_INTEL_M10_BMC_PMCI
>  	  additional drivers must be enabled in order to use the functionality
>  	  of the device.
>  
> +config MFD_LS2K_BMC_CORE
> +	bool "Loongson-2K Board Management Controller Support"
> +	select MFD_CORE

Also, from the recent bug report, this is missing a depends on PCI.

> +	help
> +	  Say yes here to add support for the Loongson-2K BMC which is a Board
> +	  Management Controller connected to the PCIe bus. The device supports
> +	  multiple sub-devices like display and IPMI. This driver provides common
> +	  support for accessing the devices.
> +
> +	  The display is enabled by default in the driver, while the IPMI interface
> +	  is enabled independently through the IPMI_LS2K option in the IPMI section.
> +
>  config MFD_QNAP_MCU
>  	tristate "QNAP microcontroller unit core driver"
>  	depends on SERIAL_DEV_BUS
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index 5e5cc279af60..6bad54edca34 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -282,6 +282,8 @@ obj-$(CONFIG_MFD_INTEL_M10_BMC_CORE)   += intel-m10-bmc-core.o
>  obj-$(CONFIG_MFD_INTEL_M10_BMC_SPI)    += intel-m10-bmc-spi.o
>  obj-$(CONFIG_MFD_INTEL_M10_BMC_PMCI)   += intel-m10-bmc-pmci.o
>  
> +obj-$(CONFIG_MFD_LS2K_BMC_CORE)		+= ls2k-bmc-core.o
> +
>  obj-$(CONFIG_MFD_ATC260X)	+= atc260x-core.o
>  obj-$(CONFIG_MFD_ATC260X_I2C)	+= atc260x-i2c.o
>  
> diff --git a/drivers/mfd/ls2k-bmc-core.c b/drivers/mfd/ls2k-bmc-core.c
> new file mode 100644
> index 000000000000..9ee1edf286e7
> --- /dev/null
> +++ b/drivers/mfd/ls2k-bmc-core.c
> @@ -0,0 +1,156 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Loongson-2K Board Management Controller (BMC) Core Driver.
> + *
> + * Copyright (C) 2024-2025 Loongson Technology Corporation Limited.
> + *
> + * Authors:
> + *	Chong Qiao <qiaochong@loongson.cn>
> + *	Binbin Zhou <zhoubinbin@loongson.cn>
> + */
> +
> +#include <linux/aperture.h>
> +#include <linux/errno.h>
> +#include <linux/init.h>
> +#include <linux/kernel.h>
> +#include <linux/mfd/core.h>
> +#include <linux/module.h>
> +#include <linux/pci.h>
> +#include <linux/pci_ids.h>
> +#include <linux/platform_data/simplefb.h>
> +#include <linux/platform_device.h>
> +
> +/* LS2K BMC resources */
> +#define LS2K_DISPLAY_RES_START		(SZ_16M + SZ_2M)
> +#define LS2K_IPMI_RES_SIZE		0x1C
> +#define LS2K_IPMI0_RES_START		(SZ_16M + 0xF00000)
> +#define LS2K_IPMI1_RES_START		(LS2K_IPMI0_RES_START + LS2K_IPMI_RES_SIZE)
> +#define LS2K_IPMI2_RES_START		(LS2K_IPMI1_RES_START + LS2K_IPMI_RES_SIZE)
> +#define LS2K_IPMI3_RES_START		(LS2K_IPMI2_RES_START + LS2K_IPMI_RES_SIZE)
> +#define LS2K_IPMI4_RES_START		(LS2K_IPMI3_RES_START + LS2K_IPMI_RES_SIZE)
> +
> +static struct resource ls2k_display_resources[] = {
> +	DEFINE_RES_MEM_NAMED(LS2K_DISPLAY_RES_START, SZ_4M, "simpledrm-res"),
> +};
> +
> +static struct resource ls2k_ipmi0_resources[] = {
> +	DEFINE_RES_MEM_NAMED(LS2K_IPMI0_RES_START, LS2K_IPMI_RES_SIZE, "ipmi0-res"),
> +};
> +
> +static struct resource ls2k_ipmi1_resources[] = {
> +	DEFINE_RES_MEM_NAMED(LS2K_IPMI1_RES_START, LS2K_IPMI_RES_SIZE, "ipmi1-res"),
> +};
> +
> +static struct resource ls2k_ipmi2_resources[] = {
> +	DEFINE_RES_MEM_NAMED(LS2K_IPMI2_RES_START, LS2K_IPMI_RES_SIZE, "ipmi2-res"),
> +};
> +
> +static struct resource ls2k_ipmi3_resources[] = {
> +	DEFINE_RES_MEM_NAMED(LS2K_IPMI3_RES_START, LS2K_IPMI_RES_SIZE, "ipmi3-res"),
> +};
> +
> +static struct resource ls2k_ipmi4_resources[] = {
> +	DEFINE_RES_MEM_NAMED(LS2K_IPMI4_RES_START, LS2K_IPMI_RES_SIZE, "ipmi4-res"),
> +};
> +
> +static struct mfd_cell ls2k_bmc_cells[] = {
> +	MFD_CELL_RES("simple-framebuffer", ls2k_display_resources),
> +	MFD_CELL_RES("ls2k-ipmi-si", ls2k_ipmi0_resources),
> +	MFD_CELL_RES("ls2k-ipmi-si", ls2k_ipmi1_resources),
> +	MFD_CELL_RES("ls2k-ipmi-si", ls2k_ipmi2_resources),
> +	MFD_CELL_RES("ls2k-ipmi-si", ls2k_ipmi3_resources),
> +	MFD_CELL_RES("ls2k-ipmi-si", ls2k_ipmi4_resources),
> +};
> +
> +/*
> + * Currently the Loongson-2K BMC hardware does not have an I2C interface to adapt to the
> + * resolution. We set the resolution by presetting "video=1280x1024-16@2M" to the BMC memory.
> + */
> +static int ls2k_bmc_parse_mode(struct pci_dev *pdev, struct simplefb_platform_data *pd)
> +{
> +	char *mode;
> +	int depth, ret;
> +
> +	/* The last 16M of PCI BAR0 is used to store the resolution string. */
> +	mode = devm_ioremap(&pdev->dev, pci_resource_start(pdev, 0) + SZ_16M, SZ_16M);
> +	if (!mode)
> +		return -ENOMEM;
> +
> +	/* The resolution field starts with the flag "video=". */
> +	if (!strncmp(mode, "video=", 6))
> +		mode = mode + 6;
> +
> +	ret = kstrtoint(strsep(&mode, "x"), 10, &pd->width);
> +	if (ret)
> +		return ret;
> +
> +	ret = kstrtoint(strsep(&mode, "-"), 10, &pd->height);
> +	if (ret)
> +		return ret;
> +
> +	ret = kstrtoint(strsep(&mode, "@"), 10, &depth);
> +	if (ret)
> +		return ret;
> +
> +	pd->stride = pd->width * depth / 8;
> +	pd->format = depth == 32 ? "a8r8g8b8" : "r5g6b5";
> +
> +	return 0;
> +}
> +
> +static int ls2k_bmc_probe(struct pci_dev *dev, const struct pci_device_id *id)
> +{
> +	struct simplefb_platform_data pd;
> +	resource_size_t base;
> +	int ret;
> +
> +	ret = pci_enable_device(dev);
> +	if (ret)
> +		return ret;
> +
> +	ret = ls2k_bmc_parse_mode(dev, &pd);
> +	if (ret)
> +		goto disable_pci;
> +
> +	ls2k_bmc_cells[0].platform_data = &pd;
> +	ls2k_bmc_cells[0].pdata_size = sizeof(pd);
> +	base = dev->resource[0].start + LS2K_DISPLAY_RES_START;
> +
> +	/* Remove conflicting efifb device */
> +	ret = aperture_remove_conflicting_devices(base, SZ_4M, "simple-framebuffer");
> +	if (ret) {
> +		dev_err(&dev->dev, "Failed to removed firmware framebuffers: %d\n", ret);
> +		goto disable_pci;
> +	}
> +
> +	return devm_mfd_add_devices(&dev->dev, PLATFORM_DEVID_AUTO,
> +				    ls2k_bmc_cells, ARRAY_SIZE(ls2k_bmc_cells),
> +				    &dev->resource[0], 0, NULL);
> +
> +disable_pci:
> +	pci_disable_device(dev);
> +	return ret;
> +}
> +
> +static void ls2k_bmc_remove(struct pci_dev *dev)
> +{
> +	pci_disable_device(dev);
> +}
> +
> +static struct pci_device_id ls2k_bmc_devices[] = {
> +	{ PCI_DEVICE(PCI_VENDOR_ID_LOONGSON, 0x1a05) },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(pci, ls2k_bmc_devices);
> +
> +static struct pci_driver ls2k_bmc_driver = {
> +	.name = "ls2k-bmc",
> +	.id_table = ls2k_bmc_devices,
> +	.probe = ls2k_bmc_probe,
> +	.remove = ls2k_bmc_remove,
> +};
> +module_pci_driver(ls2k_bmc_driver);
> +
> +MODULE_DESCRIPTION("Loongson-2K BMC Core driver");
> +MODULE_AUTHOR("Loongson Technology Corporation Limited");
> +MODULE_LICENSE("GPL");
> -- 
> 2.47.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
