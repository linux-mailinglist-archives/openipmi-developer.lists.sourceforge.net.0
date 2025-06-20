Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D584FAE22E8
	for <lists+openipmi-developer@lfdr.de>; Fri, 20 Jun 2025 21:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T332TmjyPmblMSNZtiEFSMuC9srd2OP17mMJJj5WV7w=; b=JVghAG6W2XLn6cp/FgZiPxy5BW
	s1i/lPdWE+iwFPcsEfJ5rToWLoy9G1Q+r3YtuahGE5OhsdL4cFmZ+W9PdrHIA4qPUUT2Rq3LWSDv5
	PqPGrYkW5UO0T4bIl4YgecIx5SzDYCZUJibT7hNG8i7Yuvuoy/lqWoVuFahJ9rcKH4vA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uShX4-0008UY-Ns;
	Fri, 20 Jun 2025 19:36:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1uShX3-0008US-3a
 for openipmi-developer@lists.sourceforge.net;
 Fri, 20 Jun 2025 19:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vV/ro4bKPnyNtL0QyWq1Adq1/4JC/2wqc01qvyud76o=; b=Wme4bUDue+l+4IQvG+uLuvKx7Y
 KVVfm5Ci6k1FDzsyHLlQoFxAtZVk3gLOxuELBDdaVm7MZnnoAiGVy4B/9QnH90tyozxTrsH9A4Ri/
 90u8zI5Bd8srFu7G06u4WGuqCT5Wa2zlgX+wG1yYFlM4CttAMGpNjmf5ZwSf6/O70v94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vV/ro4bKPnyNtL0QyWq1Adq1/4JC/2wqc01qvyud76o=; b=XXeiPK4+/wT+rjw7wmQA2P3sax
 RRULNoC21EI7KqNuNl5JhNmnLWSwHLC7Yryn2iLcv96TzO+vxg0QOptbrH4D6Q2ta0hyTd0BGZGXH
 BqspqNQD2/38JbAUlt2xbm3IqiLjU/cawzuoRJuo9yOa8VyoBGB09FKEciENhx/zq3gM=;
Received: from mgamail.intel.com ([192.198.163.9])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uShX1-0002OO-MQ for openipmi-developer@lists.sourceforge.net;
 Fri, 20 Jun 2025 19:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750448171; x=1781984171;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8U0ApAmF5qQnF/Hc87FkoU72bmbRHVKky63vgfV7N5s=;
 b=AwN38Qs2EjmhC07fnK0gCqL2IlU/2A5Jm3lFS0UbeuQaUE4ZKTYL7iv8
 BsnvkKQdzoLyb/9cg8Misd9E6b+dPN049+Xnb5kWdxPDyEUegz73OmI5v
 UY6+JcvFjwIbkvJ7c4GNWQHZ0wGQwjmsU9jVKNs0p9dusGaW+OYrd+gc7
 RtbPyxxKDHa6fBfHU10QoIg8ooryV6o1kfO7lzB6NvHmeVpE/VJjASJO+
 Lp7SZDQXiaIp/HGFTbKHX7wSIVmoV/GApooiqBHhwOFzSmEGrmivnstgj
 AD2B2Dkn/ELXIAXUnI0KR3Y7Y7uRg4SyN+5bGQLWD7c+Qr+4Tj0DkwoLv g==;
X-CSE-ConnectionGUID: qHwp571eQlOq0aAaR3xcyw==
X-CSE-MsgGUID: eWtC/jDSQrSgiDNTRWWM8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="63404312"
X-IronPort-AV: E=Sophos;i="6.16,252,1744095600"; d="scan'208";a="63404312"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 12:36:05 -0700
X-CSE-ConnectionGUID: NUv5Vzu4SV+K2m1kfwhYqQ==
X-CSE-MsgGUID: +UYhgqZcTqKvo2GUGOcCZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,252,1744095600"; d="scan'208";a="150423021"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 20 Jun 2025 12:36:03 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uShWq-000M6A-0I;
 Fri, 20 Jun 2025 19:36:00 +0000
Date: Sat, 21 Jun 2025 03:35:58 +0800
From: kernel test robot <lkp@intel.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou <zhoubb.aaron@gmail.com>,
 Huacai Chen <chenhuacai@loongson.cn>, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>
Message-ID: <202506210343.XCHkzorp-lkp@intel.com>
References: <174677c13e41140e19a62dd01b9502aaa7fae669.1750301674.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <174677c13e41140e19a62dd01b9502aaa7fae669.1750301674.git.zhoubinbin@loongson.cn>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Binbin,
 kernel test robot noticed the following build errors:
 [auto build test ERROR on 8ffcb7560b4a15faf821df95e3ab532b2b020f8c] 
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
X-Headers-End: 1uShX1-0002OO-MQ
Subject: Re: [Openipmi-developer] [PATCH v5 2/3] mfd: ls2kbmc: Add
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

[auto build test ERROR on 8ffcb7560b4a15faf821df95e3ab532b2b020f8c]

url:    https://github.com/intel-lab-lkp/linux/commits/Binbin-Zhou/mfd-ls2kbmc-Introduce-Loongson-2K-BMC-core-driver/20250620-100856
base:   8ffcb7560b4a15faf821df95e3ab532b2b020f8c
patch link:    https://lore.kernel.org/r/174677c13e41140e19a62dd01b9502aaa7fae669.1750301674.git.zhoubinbin%40loongson.cn
patch subject: [PATCH v5 2/3] mfd: ls2kbmc: Add Loongson-2K BMC reset function support
config: sh-allmodconfig (https://download.01.org/0day-ci/archive/20250621/202506210343.XCHkzorp-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 15.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250621/202506210343.XCHkzorp-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506210343.XCHkzorp-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/mfd/ls2k-bmc-core.c: In function 'ls2k_bmc_pcie_is_connected':
>> drivers/mfd/ls2k-bmc-core.c:156:16: error: implicit declaration of function 'pci_iomap'; did you mean 'pcim_iomap'? [-Wimplicit-function-declaration]
     156 |         base = pci_iomap(parent, 0, LS7A_PCI_CFG_SIZE);
         |                ^~~~~~~~~
         |                pcim_iomap
>> drivers/mfd/ls2k-bmc-core.c:156:14: error: assignment to 'void *' from 'int' makes pointer from integer without a cast [-Wint-conversion]
     156 |         base = pci_iomap(parent, 0, LS7A_PCI_CFG_SIZE);
         |              ^
   In file included from include/linux/io.h:12,
                    from include/linux/iopoll.h:14,
                    from drivers/mfd/ls2k-bmc-core.c:17:
>> arch/sh/include/asm/io.h:122:21: error: implicit declaration of function 'pci_iounmap'; did you mean 'pcim_iounmap'? [-Wimplicit-function-declaration]
     122 | #define pci_iounmap pci_iounmap
         |                     ^~~~~~~~~~~
   drivers/mfd/ls2k-bmc-core.c:167:17: note: in expansion of macro 'pci_iounmap'
     167 |                 pci_iounmap(parent, base);
         |                 ^~~~~~~~~~~
   drivers/mfd/ls2k-bmc-core.c: In function 'ls2k_bmc_pdata_initial':
   drivers/mfd/ls2k-bmc-core.c:350:15: error: implicit declaration of function 'acpi_register_gsi' [-Wimplicit-function-declaration]
     350 |         irq = acpi_register_gsi(NULL, gsi, ACPI_EDGE_SENSITIVE, ACPI_ACTIVE_LOW);
         |               ^~~~~~~~~~~~~~~~~
   drivers/mfd/ls2k-bmc-core.c:377:9: error: implicit declaration of function 'acpi_unregister_gsi'; did you mean 'arch_unregister_cpu'? [-Wimplicit-function-declaration]
     377 |         acpi_unregister_gsi(gsi);
         |         ^~~~~~~~~~~~~~~~~~~
         |         arch_unregister_cpu
   drivers/mfd/ls2k-bmc-core.c: At top level:
   drivers/mfd/ls2k-bmc-core.c:481:1: warning: data definition has no type or storage class
     481 | module_pci_driver(ls2k_bmc_driver);
         | ^~~~~~~~~~~~~~~~~
   drivers/mfd/ls2k-bmc-core.c:481:1: error: type defaults to 'int' in declaration of 'module_pci_driver' [-Wimplicit-int]
   drivers/mfd/ls2k-bmc-core.c:481:1: error: parameter names (without types) in function declaration [-Wdeclaration-missing-parameter-type]
   drivers/mfd/ls2k-bmc-core.c:475:26: warning: 'ls2k_bmc_driver' defined but not used [-Wunused-variable]
     475 | static struct pci_driver ls2k_bmc_driver = {
         |                          ^~~~~~~~~~~~~~~


vim +156 drivers/mfd/ls2k-bmc-core.c

   150	
   151	static bool ls2k_bmc_pcie_is_connected(struct pci_dev *parent, struct ls2k_bmc_pdata *priv)
   152	{
   153		void __iomem *base;
   154		int sts, ret;
   155	
 > 156		base = pci_iomap(parent, 0, LS7A_PCI_CFG_SIZE);
   157		if (!base)
   158			return false;
   159	
   160		writel(readl(base + LS7A_PCIE_PORT_CTL0) | LS2K_BMC_PCIE_LTSSM_ENABLE,
   161		       base + LS7A_PCIE_PORT_CTL0);
   162	
   163		ret = readl_poll_timeout_atomic(base + LS7A_PCIE_PORT_STS1, sts,
   164						(sts & LS2K_BMC_PCIE_LTSSM_STS) == LS2K_BMC_PCIE_CONNECTED,
   165						LS2K_BMC_PCIE_DELAY_US, LS2K_BMC_PCIE_TIMEOUT_US);
   166		if (ret) {
   167			pci_iounmap(parent, base);
   168			dev_err(priv->dev, "PCIE train failed status=0x%x\n", sts);
   169			return false;
   170		}
   171	
   172		pci_iounmap(parent, base);
   173		return true;
   174	}
   175	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
