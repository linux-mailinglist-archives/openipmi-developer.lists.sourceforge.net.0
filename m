Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A431AF08ED
	for <lists+openipmi-developer@lfdr.de>; Wed,  2 Jul 2025 05:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oPfee2c0YWJZUqRIx02pSjXOitmxqvd3QwcjAwhww4Q=; b=Lx2aNWGVzWab5DxDBqZcuh9Yzb
	xDnHMEqQRTNHVydsYQHCj1B3t/0nE6Ydk9zjy4ztOXOuEV8r52eQxleXy1a+Q/7B8rfKt8oUP40D0
	2DUResnhtRj3gez4+w5sUidYDPRbWpqW3YUPfT7e3GAuGKn+JKAmm9OQn7ZEtI4bzSE8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uWnmf-0007qX-6U;
	Wed, 02 Jul 2025 03:05:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1uWnmd-0007qR-Uk
 for openipmi-developer@lists.sourceforge.net;
 Wed, 02 Jul 2025 03:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=512ydXr916io9JHCtlnyDTidrL2/jUB2HfGF1g66E0Y=; b=ZkBZhImZR1jxKpqs0j8g1T0wFC
 om5mEGFASNobTVLiDWsFOkMpE9znIbDhI38DIT9CiXmxLNUQe5xE3Z5ouT2rhglZXqbwHOULcicOz
 NYyhsRse1eO8z9LJq/PRpFbJAx1mh9H34/53jJe6EmAPyRSXbPVxfwdWteLO+w8Ocn1o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=512ydXr916io9JHCtlnyDTidrL2/jUB2HfGF1g66E0Y=; b=bq8vQNAB5iGqyfiON/eoglFaVg
 ZrezB6Up6nsr1C3FtKpaUciks+zeR0dmcdZwosG+ODbB2A2fIvf9zeuDFIV41PXSltc9btxxP4o6W
 Bsl+Ww/BHimRd81ctz3M7VDpT1aGhz8dGMEebTIcMNl2Mf9ECj4d6jnmYALpCxiKdfS0=;
Received: from mgamail.intel.com ([198.175.65.13])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uWnmd-0001Om-5Z for openipmi-developer@lists.sourceforge.net;
 Wed, 02 Jul 2025 03:05:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751425515; x=1782961515;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1EtsgeEZScMfO3tNvErUUQvKAsFCtOGkIEDOJyOarb8=;
 b=Rq3d0Sawfw4X1++NgTTJ16XPZ66Q+IxOXYyi71HKmFsBpA7kcPYwnBvl
 9ghHaahw3TETJyy8DJE2374X+YISbcFfH6Gxvd6QxfdeX/ZjvVeMf66qL
 TZKSzYdfA0BrEP0eN2V6BqbTNcfSJq3FgnZmN8i+uq2rin0eAZGC2XFZQ
 Tby+qDrOxzSwt46RMMkkL7Ggk+KXH/cEGUVasUW88QYrnVc9E6sz6GHUX
 eGfHvudOVNHUBV0OIMSRQen0QJW0BYFP9pvwWP+zH2X2i06Attmqqf0ah
 jNN3wH8i5X9LkvwwpZQDQwWPy1tPjm57ORACHzxfsUTT0De1zMzgJJonb w==;
X-CSE-ConnectionGUID: eD2sFZlnQEKBLsXTco36Mg==
X-CSE-MsgGUID: Qo0OL/GpQK2sXj+CafP0LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="64756354"
X-IronPort-AV: E=Sophos;i="6.16,280,1744095600"; d="scan'208";a="64756354"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 20:05:04 -0700
X-CSE-ConnectionGUID: bL3q07nyTH6qKQMc2aQU7w==
X-CSE-MsgGUID: PWVxxvR+SpSow4SONP8LJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,280,1744095600"; d="scan'208";a="153570828"
Received: from lkp-server01.sh.intel.com (HELO 0b2900756c14) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 01 Jul 2025 20:05:01 -0700
Received: from kbuild by 0b2900756c14 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uWnmM-00004z-2n;
 Wed, 02 Jul 2025 03:04:58 +0000
Date: Wed, 2 Jul 2025 11:04:28 +0800
From: kernel test robot <lkp@intel.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou <zhoubb.aaron@gmail.com>,
 Huacai Chen <chenhuacai@loongson.cn>, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>
Message-ID: <202507021011.sDAHGinj-lkp@intel.com>
References: <78b06d1c7ae0677868e0c7498b589af163313c8d.1750939357.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78b06d1c7ae0677868e0c7498b589af163313c8d.1750939357.git.zhoubinbin@loongson.cn>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Binbin,
 kernel test robot noticed the following build errors:
 [auto build test ERROR on 3d77b3cc7cc8115d89fa14eaf601e56372953484] 
 Content analysis details:   (-0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uWnmd-0001Om-5Z
Subject: Re: [Openipmi-developer] [PATCH v6 2/3] mfd: ls2kbmc: Add
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
Cc: Chong Qiao <qiaochong@loongson.cn>, jeffbai@aosc.io, kexybiscuit@aosc.io,
 wangyao@lemote.com, linux-kernel@vger.kernel.org, loongarch@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Binbin,

kernel test robot noticed the following build errors:

[auto build test ERROR on 3d77b3cc7cc8115d89fa14eaf601e56372953484]

url:    https://github.com/intel-lab-lkp/linux/commits/Binbin-Zhou/mfd-ls2kbmc-Introduce-Loongson-2K-BMC-core-driver/20250626-203353
base:   3d77b3cc7cc8115d89fa14eaf601e56372953484
patch link:    https://lore.kernel.org/r/78b06d1c7ae0677868e0c7498b589af163313c8d.1750939357.git.zhoubinbin%40loongson.cn
patch subject: [PATCH v6 2/3] mfd: ls2kbmc: Add Loongson-2K BMC reset function support
config: sparc64-allmodconfig (https://download.01.org/0day-ci/archive/20250702/202507021011.sDAHGinj-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 15.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250702/202507021011.sDAHGinj-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507021011.sDAHGinj-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/mfd/ls2k-bmc-core.c: In function 'ls2k_bmc_pdata_initial':
>> drivers/mfd/ls2k-bmc-core.c:349:15: error: implicit declaration of function 'acpi_register_gsi' [-Wimplicit-function-declaration]
     349 |         irq = acpi_register_gsi(NULL, gsi, ACPI_EDGE_SENSITIVE, ACPI_ACTIVE_LOW);
         |               ^~~~~~~~~~~~~~~~~
>> drivers/mfd/ls2k-bmc-core.c:376:9: error: implicit declaration of function 'acpi_unregister_gsi'; did you mean 'arch_unregister_cpu'? [-Wimplicit-function-declaration]
     376 |         acpi_unregister_gsi(gsi);
         |         ^~~~~~~~~~~~~~~~~~~
         |         arch_unregister_cpu


vim +/acpi_register_gsi +349 drivers/mfd/ls2k-bmc-core.c

   326	
   327	static int ls2k_bmc_pdata_initial(struct pci_dev *pdev, struct ls2k_bmc_pdata *priv)
   328	{
   329		int gsi = 16 + (LS2K_BMC_RESET_GPIO & 7);
   330		void __iomem *gpio_base;
   331		int irq, ret;
   332	
   333		ls2k_bmc_save_pci_data(pdev, priv);
   334	
   335		INIT_WORK(&priv->bmc_reset_work, ls2k_bmc_events_fn);
   336	
   337		ret = devm_request_irq(&pdev->dev, pdev->irq, ls2k_bmc_interrupt,
   338				       IRQF_SHARED | IRQF_TRIGGER_FALLING, "ls2kbmc pcie", priv);
   339		if (ret) {
   340			dev_err(priv->dev, "LS2KBMC PCI-E request_irq(%d) failed\n", pdev->irq);
   341			return ret;
   342		}
   343	
   344		/*
   345		 * Since gpio_chip->to_irq is not implemented in the Loongson-3 GPIO driver,
   346		 * acpi_register_gsi() is used to obtain the GPIO irq. The GPIO interrupt is a
   347		 * watchdog interrupt that is triggered when the BMC resets.
   348		 */
 > 349		irq = acpi_register_gsi(NULL, gsi, ACPI_EDGE_SENSITIVE, ACPI_ACTIVE_LOW);
   350		if (irq < 0)
   351			return irq;
   352	
   353		gpio_base = ioremap(LOONGSON_GPIO_REG_BASE, LOONGSON_GPIO_REG_SIZE);
   354		if (!gpio_base) {
   355			ret = PTR_ERR(gpio_base);
   356			goto acpi_failed;
   357		}
   358	
   359		writel(readl(gpio_base + LOONGSON_GPIO_OEN) | BIT(LS2K_BMC_RESET_GPIO),
   360		       gpio_base + LOONGSON_GPIO_OEN);
   361		writel(readl(gpio_base + LOONGSON_GPIO_FUNC) & ~BIT(LS2K_BMC_RESET_GPIO),
   362		       gpio_base + LOONGSON_GPIO_FUNC);
   363		writel(readl(gpio_base + LOONGSON_GPIO_INTPOL) & ~BIT(LS2K_BMC_RESET_GPIO),
   364		       gpio_base + LOONGSON_GPIO_INTPOL);
   365		writel(readl(gpio_base + LOONGSON_GPIO_INTEN) | BIT(LS2K_BMC_RESET_GPIO),
   366		       gpio_base + LOONGSON_GPIO_INTEN);
   367	
   368		ret = devm_request_irq(priv->dev, irq, ls2k_bmc_interrupt,
   369				       IRQF_SHARED | IRQF_TRIGGER_FALLING, "ls2kbmc gpio", priv);
   370		if (ret)
   371			dev_err(priv->dev, "LS2KBMC GPIO request_irq(%d) failed\n", irq);
   372	
   373		iounmap(gpio_base);
   374	
   375	acpi_failed:
 > 376		acpi_unregister_gsi(gsi);
   377		return ret;
   378	}
   379	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
