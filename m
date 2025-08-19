Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F178B2BFC1
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 Aug 2025 13:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Message-ID:To:From:Date:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=hpMj6+7zGVDGwH1FQOi2+yteA/dOOCauMcjHcDMTcbk=; b=J2v7/rL6LruX+tra5IHPYS6CDZ
	TJnpbC+VsgQ2Id7axtD/O+91tR3pB16yZLq0mUsDfTWIbBta7xCOPCsq+Swn1z9ocSN2g13YLYxUX
	oZw+uizdp5z9hVkAsdQZSlviH5jmEEjALlLqXhwicuYD1FPMIihWYGMWA/iqZ7XnPQnw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uoK7o-0000ID-31;
	Tue, 19 Aug 2025 11:03:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dan.carpenter@linaro.org>) id 1uoK7m-0000I2-Re
 for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Aug 2025 11:03:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rNam3s73jCkH5fp8vQUdOONkGiCMjeqztr8hoMDyHKE=; b=h1mpO4MYtDc34yfqBf/P65DfAb
 eIa585aBG3UybaY2wtKjXdeSc5fUcc7BiGxgXtjyN2WspRLaw+O/0Zl0K5Te6QRAOx6l6RKqHObQs
 q2qfEi9zsiQCz+VTaUJXzy0vFIC805iex9wOCPYHVvD2sIZWkW4ZC1iI2JwTy+PXA0b4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rNam3s73jCkH5fp8vQUdOONkGiCMjeqztr8hoMDyHKE=; b=c
 6kROsBV2HWYpSciv5nYPQGcASmBrqjWtcaYYAUkkEh1NGnTAJ+r6U1teybeSOC7nH4MEHsAfSEuAl
 BsiDTLZp2rykkWzKEEnwFegpnCK7/nhkQzQUqvXURObbdyMHogjg0M6FIq1IjDMXmYvBsND+ylb9z
 ppNJGopoNHWJhbvw=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uoK7l-000386-K0 for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Aug 2025 11:03:30 +0000
Received: by mail-lf1-f47.google.com with SMTP id
 2adb3069b0e04-55ce526ac04so4851746e87.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 19 Aug 2025 04:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1755601398; x=1756206198; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=rNam3s73jCkH5fp8vQUdOONkGiCMjeqztr8hoMDyHKE=;
 b=nYeIxnaWUi9pEXJLFu4vc45hMZ+XUY26nbr3CIxFSklnQP3cdRTtyH92/RhucvD1TB
 kL1qBZ9Slbzp8zSFgm+XFCLJCGCoWlWnVXLzvPR4PLrue9kg1j2Qva1iVE/JwLU3t8vg
 P95YdCEz8yiVKlZWICbLeqRh8AkjyeA0hpyiT8PNR10fHFzhACRWuHyFkHG9sz7aMjZJ
 ZJrSYtIeFx/zJNbm2JKAQaDrXYRfu99PAbGxQf40OMUQ729spGBR98rc84X26G4Gvo1R
 9k3bnU4RE4hml1FhPKFFbW3JmWXjp06EQdHrSg9Y0S0kQNZGT4N4SKDpsczNDXHGAWe7
 YZEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755601398; x=1756206198;
 h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
 :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=rNam3s73jCkH5fp8vQUdOONkGiCMjeqztr8hoMDyHKE=;
 b=gNfPkYj3x4bK5CSE5ClvIwQb2Gwnw7y2tJn1HO0yLkckyWTdE0cbC+qN5AG0/GCn7G
 nZcyqjlvOiiXlHFkihjM+POb+B0QYvCEsX2PHh5tf7ESZz03z93Gejnbyw7opOEp2GEl
 LzBDPj0Z+kaHLqjP6iIErFaz73m1JNx8wKbKPeR/Iv6xJ5z6lgyfMH1LBRfuJZMXjvRv
 qB2bNVo/A4VUq45jNQ0sOgr56waqpkoSoeQrZxnOzfgsN5YJg/3Dn4D/2SbVZRmQMTaC
 zuD1D8HT9NS6x/7LU/PaLmd4mUBFGsMUlYnOnwxERaIrWcGXxblQ8kP/rrnKP85XtodH
 kGVg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU/Kzgbbe/xat65wSAKywA+O1Zn+1d6iqGCmqH5oGdHXEuivd44z2Zx2dwpnWzdgRCulDfVwKktKlBCtaVaL+J0NWw=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyGPVPS4yr4vL8Ky+rMO4La/wRQavB93NM7lQ9veh9YUrrsrJbH
 fu3JZNAT39R34WTPmU3osjj76g1YEhJWGB1Q9FHeUEE1jHIu/lnIg5BkVg/tEwwrlzaNNp+Nxmo
 BLs9r
X-Gm-Gg: ASbGncusqR5m+1ClptTyUzSJX4cZx34VXl7owBn6MEJtZYmW17JU/TViwYIbIa0O9GK
 DA/9XpwCm0VaVgN0a/aUzHlr2VNLkJmf1C96LjuxL05j5snE4FfgFKxpTseMwpvWH5gY/7Cr+Vs
 OT32tg0QwU0I5ssEhktv98klReIq7c0oUmTl6Vkk/CbQfF+1tkw5zDsvjk6ttgd/M7yPNmPT0yX
 szZDh4LJiuTLGAvxDdWGSwQmNP573yN2n+J4gymdnGiZbcdpAkcZAIXInpEExloBvDo7mV6ya4q
 nfoTkR/rQm41Q0lnfxOcJxhzMR5sts8TsrIvkp6r/2wHW/Jzq8zIDmyzJ1bIs83TuvCt2tTiDO7
 otr+sCoCwQQ5IRUJKyMBXK6HMc/FGfsDFjtrgBoJIjjU=
X-Google-Smtp-Source: AGHT+IFhVoXOXWz933OS2H4MYPh1tnFGv79hui+RhHHpUYqmH0GfWUAlyD1l4ealbPI6uEAVPOGUJg==
X-Received: by 2002:a05:6000:200d:b0:3b7:8832:fdd5 with SMTP id
 ffacd0b85a97d-3c0eaf4f6dfmr1431883f8f.16.1755597213853; 
 Tue, 19 Aug 2025 02:53:33 -0700 (PDT)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3c0771c16eesm3152017f8f.37.2025.08.19.02.53.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Aug 2025 02:53:33 -0700 (PDT)
Date: Tue, 19 Aug 2025 12:53:30 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Binbin Zhou <zhoubinbin@loongson.cn>,
 Binbin Zhou <zhoubb.aaron@gmail.com>,
 Huacai Chen <chenhuacai@loongson.cn>, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>
Message-ID: <202508191519.uT5io1jk-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1809103a948545df93b7b439df46ca6393995aa1.1754999365.git.zhoubinbin@loongson.cn>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Binbin,
 kernel test robot noticed the following build warnings: url:
 https://github.com/intel-lab-lkp/linux/commits/Binbin-Zhou/mfd-ls2kbmc-Introduce-Loongson-2K-BMC-core-driver/20250812-200258
 base: 006aa8f57f55dd5bf68c4ada1e0d3f4e59027d71 patch link: https://lor [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.47 listed in wl.mailspike.net]
X-Headers-End: 1uoK7l-000386-K0
Subject: Re: [Openipmi-developer] [PATCH v9 2/3] mfd: ls2kbmc: Add
 Loongson-2K BMC reset function support
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
Cc: Chong Qiao <qiaochong@loongson.cn>, jeffbai@aosc.io, lkp@intel.com,
 kexybiscuit@aosc.io, wangyao@lemote.com, linux-kernel@vger.kernel.org,
 loongarch@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Binbin,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Binbin-Zhou/mfd-ls2kbmc-Introduce-Loongson-2K-BMC-core-driver/20250812-200258
base:   006aa8f57f55dd5bf68c4ada1e0d3f4e59027d71
patch link:    https://lore.kernel.org/r/1809103a948545df93b7b439df46ca6393995aa1.1754999365.git.zhoubinbin%40loongson.cn
patch subject: [PATCH v9 2/3] mfd: ls2kbmc: Add Loongson-2K BMC reset function support
config: loongarch-randconfig-r073-20250818 (https://download.01.org/0day-ci/archive/20250819/202508191519.uT5io1jk-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 15.1.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202508191519.uT5io1jk-lkp@intel.com/

smatch warnings:
drivers/mfd/ls2k-bmc-core.c:389 ls2k_bmc_pdata_initial() warn: passing zero to 'PTR_ERR'

vim +/PTR_ERR +389 drivers/mfd/ls2k-bmc-core.c

71ff6b050ad788 Binbin Zhou 2025-08-12  360  static int ls2k_bmc_pdata_initial(struct ls2k_bmc_pdata *ddata)
71ff6b050ad788 Binbin Zhou 2025-08-12  361  {
71ff6b050ad788 Binbin Zhou 2025-08-12  362  	struct pci_dev *pdev = to_pci_dev(ddata->dev);
71ff6b050ad788 Binbin Zhou 2025-08-12  363  	int gsi = 16 + (LS2K_BMC_RESET_GPIO & 7);
71ff6b050ad788 Binbin Zhou 2025-08-12  364  	void __iomem *gpio_base;
71ff6b050ad788 Binbin Zhou 2025-08-12  365  	int irq, ret, val;
71ff6b050ad788 Binbin Zhou 2025-08-12  366  
71ff6b050ad788 Binbin Zhou 2025-08-12  367  	ls2k_bmc_save_pci_data(pdev, ddata);
71ff6b050ad788 Binbin Zhou 2025-08-12  368  
71ff6b050ad788 Binbin Zhou 2025-08-12  369  	INIT_WORK(&ddata->bmc_reset_work, ls2k_bmc_events_fn);
71ff6b050ad788 Binbin Zhou 2025-08-12  370  
71ff6b050ad788 Binbin Zhou 2025-08-12  371  	ret = devm_request_irq(&pdev->dev, pdev->irq, ls2k_bmc_interrupt,
71ff6b050ad788 Binbin Zhou 2025-08-12  372  			       IRQF_SHARED | IRQF_TRIGGER_FALLING, "ls2kbmc pcie", ddata);
71ff6b050ad788 Binbin Zhou 2025-08-12  373  	if (ret) {
71ff6b050ad788 Binbin Zhou 2025-08-12  374  		dev_err(ddata->dev, "Failed to request LS2KBMC PCI-E IRQ %d.\n", pdev->irq);
71ff6b050ad788 Binbin Zhou 2025-08-12  375  		return ret;
71ff6b050ad788 Binbin Zhou 2025-08-12  376  	}
71ff6b050ad788 Binbin Zhou 2025-08-12  377  
71ff6b050ad788 Binbin Zhou 2025-08-12  378  	/*
71ff6b050ad788 Binbin Zhou 2025-08-12  379  	 * Since gpio_chip->to_irq is not implemented in the Loongson-3 GPIO driver,
71ff6b050ad788 Binbin Zhou 2025-08-12  380  	 * acpi_register_gsi() is used to obtain the GPIO IRQ. The GPIO interrupt is a
71ff6b050ad788 Binbin Zhou 2025-08-12  381  	 * watchdog interrupt that is triggered when the BMC resets.
71ff6b050ad788 Binbin Zhou 2025-08-12  382  	 */
71ff6b050ad788 Binbin Zhou 2025-08-12  383  	irq = acpi_register_gsi(NULL, gsi, ACPI_EDGE_SENSITIVE, ACPI_ACTIVE_LOW);
71ff6b050ad788 Binbin Zhou 2025-08-12  384  	if (irq < 0)
71ff6b050ad788 Binbin Zhou 2025-08-12  385  		return irq;
71ff6b050ad788 Binbin Zhou 2025-08-12  386  
71ff6b050ad788 Binbin Zhou 2025-08-12  387  	gpio_base = ioremap(LOONGSON_GPIO_REG_BASE, LOONGSON_GPIO_REG_SIZE);
71ff6b050ad788 Binbin Zhou 2025-08-12  388  	if (!gpio_base) {
71ff6b050ad788 Binbin Zhou 2025-08-12 @389  		ret = PTR_ERR(gpio_base);

This PTR_ERR(NULL) is success.  It should be "ret = -ENOMEM;"

71ff6b050ad788 Binbin Zhou 2025-08-12  390  		goto acpi_failed;
71ff6b050ad788 Binbin Zhou 2025-08-12  391  	}
71ff6b050ad788 Binbin Zhou 2025-08-12  392  
71ff6b050ad788 Binbin Zhou 2025-08-12  393  	/* Disable GPIO output */
71ff6b050ad788 Binbin Zhou 2025-08-12  394  	val = readl(gpio_base + LOONGSON_GPIO_OEN);
71ff6b050ad788 Binbin Zhou 2025-08-12  395  	writel(val | BIT(LS2K_BMC_RESET_GPIO), gpio_base + LOONGSON_GPIO_OEN);
71ff6b050ad788 Binbin Zhou 2025-08-12  396  
71ff6b050ad788 Binbin Zhou 2025-08-12  397  	/* Enable GPIO functionality */
71ff6b050ad788 Binbin Zhou 2025-08-12  398  	val = readl(gpio_base + LOONGSON_GPIO_FUNC);
71ff6b050ad788 Binbin Zhou 2025-08-12  399  	writel(val & ~BIT(LS2K_BMC_RESET_GPIO), gpio_base + LOONGSON_GPIO_FUNC);
71ff6b050ad788 Binbin Zhou 2025-08-12  400  
71ff6b050ad788 Binbin Zhou 2025-08-12  401  	/* Set GPIO interrupts to low-level active */
71ff6b050ad788 Binbin Zhou 2025-08-12  402  	val = readl(gpio_base + LOONGSON_GPIO_INTPOL);
71ff6b050ad788 Binbin Zhou 2025-08-12  403  	writel(val & ~BIT(LS2K_BMC_RESET_GPIO), gpio_base + LOONGSON_GPIO_INTPOL);
71ff6b050ad788 Binbin Zhou 2025-08-12  404  
71ff6b050ad788 Binbin Zhou 2025-08-12  405  	/* Enable GPIO interrupts */
71ff6b050ad788 Binbin Zhou 2025-08-12  406  	val = readl(gpio_base + LOONGSON_GPIO_INTEN);
71ff6b050ad788 Binbin Zhou 2025-08-12  407  	writel(val | BIT(LS2K_BMC_RESET_GPIO), gpio_base + LOONGSON_GPIO_INTEN);
71ff6b050ad788 Binbin Zhou 2025-08-12  408  
71ff6b050ad788 Binbin Zhou 2025-08-12  409  	ret = devm_request_irq(ddata->dev, irq, ls2k_bmc_interrupt,
71ff6b050ad788 Binbin Zhou 2025-08-12  410  			       IRQF_SHARED | IRQF_TRIGGER_FALLING, "ls2kbmc gpio", ddata);
71ff6b050ad788 Binbin Zhou 2025-08-12  411  	if (ret)
71ff6b050ad788 Binbin Zhou 2025-08-12  412  		dev_err(ddata->dev, "Failed to request LS2KBMC GPIO IRQ %d.\n", irq);
71ff6b050ad788 Binbin Zhou 2025-08-12  413  
71ff6b050ad788 Binbin Zhou 2025-08-12  414  	iounmap(gpio_base);
71ff6b050ad788 Binbin Zhou 2025-08-12  415  
71ff6b050ad788 Binbin Zhou 2025-08-12  416  acpi_failed:
71ff6b050ad788 Binbin Zhou 2025-08-12  417  	acpi_unregister_gsi(gsi);
71ff6b050ad788 Binbin Zhou 2025-08-12  418  	return ret;
71ff6b050ad788 Binbin Zhou 2025-08-12  419  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
