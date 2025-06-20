Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDA0AE24E9
	for <lists+openipmi-developer@lfdr.de>; Sat, 21 Jun 2025 00:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OyP6lpK242ieYitxKq6bdE8AzoFZGBoX8n8lt/8kW0Y=; b=Dl3NeRj4vyzE8GZGYABunSCHHh
	QSIQo8Bhlo4+p/rm3RmrURvwYcZbJfDO1iYyevZsBAMKlEOL6lTI+GUKfJTtmucEjNx/kn8in8PnN
	yAdLFpOB4JTULuT7KXORdho+aRW6mJDpXgKCxlWgFunBP3zZVDphr2e/zsYf2mmhcHzo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uSk2M-0003Kf-Ij;
	Fri, 20 Jun 2025 22:16:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1uSk2K-0003KX-JL
 for openipmi-developer@lists.sourceforge.net;
 Fri, 20 Jun 2025 22:16:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q2qy4ZKxIyKl4X0KclJ3K0i89qn808rNp711WfdQ2Tg=; b=FcCSYis/ilwJldsaVTX1PUqKTY
 THNWkmUd6QUArqXOaNqrm6LBElFOTRA5I9uvrMBzz+0/exKKwQuE0AD5QoxirnEtFylTmYHPVzw1x
 cheV4I9zNR+Z0Nd1JjIvYtYjrJCzkf5b+0Wgsygajunhh3X7Vkc5xpWGxmTKv5oxp30Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q2qy4ZKxIyKl4X0KclJ3K0i89qn808rNp711WfdQ2Tg=; b=Y/thy19bbbVi9l1pWXylBQgmmP
 yEpjEeocULsUK3J9FQlH/Ugd99bjlqsbEN3S5lnJLxyGRXkVs5IAhtM6r0cJUHqZHb7+HuJSwKiog
 ZVS6AU3GMRLvzuRetBvREJZubfgs7pBcHBdOVlb3LevhF6R8U0kMFnudEl21v/wfjfAU=;
Received: from mgamail.intel.com ([198.175.65.17])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uSk2J-0001p3-VB for openipmi-developer@lists.sourceforge.net;
 Fri, 20 Jun 2025 22:16:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750457800; x=1781993800;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DiznFfKK4GJWBk8WW4xN3lBklSm/HLutSphgJ/8W54s=;
 b=JXb2D+rT/aV+pmmMJUQy6N8dBOjfs7WZM2wG7KkScbF/4YJqIJRgbjlP
 tagP0ucMLXuy6MRP03SRwO2/F6vsUv1WMZsS37KeVctY6D49i7nJlzXB2
 +dpuqgr29L81eyOCDAvKMAEkCCVhNSr/CpSK8rmBw43gaCBQtbmiMoGtM
 mshKg93UzMtNquzAMAHZWJwXD+rmvrhSRhrVbXJzlWQe2RbCI2Aog0X1X
 rgd3o0uU9oDcPQzTA4BWre2lT3MPtdWMOW2HFNG2QDdjrzlWWN3EHHSyc
 YI4e5LC8LhOfKCpMBE78euhAIdYZyhGMAlditP8R3Y4vbSVmSp2rX3+S+ Q==;
X-CSE-ConnectionGUID: BlIGpaPUTYSomcYK10NRiA==
X-CSE-MsgGUID: m/KOIq/3TXOsojVBN6wd3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="52694021"
X-IronPort-AV: E=Sophos;i="6.16,252,1744095600"; d="scan'208";a="52694021"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 15:16:29 -0700
X-CSE-ConnectionGUID: 0IFH3uNeSOGycdSCpEQoXA==
X-CSE-MsgGUID: NTGemIsmQRiQH1cMf6dTqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,252,1744095600"; d="scan'208";a="188255524"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 20 Jun 2025 15:16:26 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uSk23-000MBy-0z;
 Fri, 20 Jun 2025 22:16:23 +0000
Date: Sat, 21 Jun 2025 06:15:43 +0800
From: kernel test robot <lkp@intel.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou <zhoubb.aaron@gmail.com>,
 Huacai Chen <chenhuacai@loongson.cn>, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>
Message-ID: <202506210652.ipUFDU5B-lkp@intel.com>
References: <82cbc8558f15981e0953ab229d2afcc5501f982c.1750301674.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82cbc8558f15981e0953ab229d2afcc5501f982c.1750301674.git.zhoubinbin@loongson.cn>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Binbin,
 kernel test robot noticed the following build warnings:
 [auto build test WARNING on 8ffcb7560b4a15faf821df95e3ab532b2b020f8c] 
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
X-Headers-End: 1uSk2J-0001p3-VB
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
Cc: Chong Qiao <qiaochong@loongson.cn>, jeffbai@aosc.io, kexybiscuit@aosc.io,
 wangyao@lemote.com, linux-kernel@vger.kernel.org, loongarch@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Binbin,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 8ffcb7560b4a15faf821df95e3ab532b2b020f8c]

url:    https://github.com/intel-lab-lkp/linux/commits/Binbin-Zhou/mfd-ls2kbmc-Introduce-Loongson-2K-BMC-core-driver/20250620-100856
base:   8ffcb7560b4a15faf821df95e3ab532b2b020f8c
patch link:    https://lore.kernel.org/r/82cbc8558f15981e0953ab229d2afcc5501f982c.1750301674.git.zhoubinbin%40loongson.cn
patch subject: [PATCH v5 1/3] mfd: ls2kbmc: Introduce Loongson-2K BMC core driver
config: x86_64-randconfig-123-20250621 (https://download.01.org/0day-ci/archive/20250621/202506210652.ipUFDU5B-lkp@intel.com/config)
compiler: clang version 20.1.2 (https://github.com/llvm/llvm-project 58df0ef89dd64126512e4ee27b4ac3fd8ddf6247)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250621/202506210652.ipUFDU5B-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506210652.ipUFDU5B-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/mfd/ls2k-bmc-core.c:75:14: sparse: sparse: incorrect type in assignment (different address spaces) @@     expected char *mode @@     got void [noderef] __iomem * @@
   drivers/mfd/ls2k-bmc-core.c:75:14: sparse:     expected char *mode
   drivers/mfd/ls2k-bmc-core.c:75:14: sparse:     got void [noderef] __iomem *

vim +75 drivers/mfd/ls2k-bmc-core.c

    64	
    65	/*
    66	 * Currently the Loongson-2K BMC hardware does not have an I2C interface to adapt to the
    67	 * resolution. We set the resolution by presetting "video=1280x1024-16@2M" to the BMC memory.
    68	 */
    69	static int ls2k_bmc_parse_mode(struct pci_dev *pdev, struct simplefb_platform_data *pd)
    70	{
    71		char *mode;
    72		int depth, ret;
    73	
    74		/* The last 16M of PCI BAR0 is used to store the resolution string. */
  > 75		mode = devm_ioremap(&pdev->dev, pci_resource_start(pdev, 0) + SZ_16M, SZ_16M);
    76		if (!mode)
    77			return -ENOMEM;
    78	
    79		/* The resolution field starts with the flag "video=". */
    80		if (!strncmp(mode, "video=", 6))
    81			mode = mode + 6;
    82	
    83		ret = kstrtoint(strsep(&mode, "x"), 10, &pd->width);
    84		if (ret)
    85			return ret;
    86	
    87		ret = kstrtoint(strsep(&mode, "-"), 10, &pd->height);
    88		if (ret)
    89			return ret;
    90	
    91		ret = kstrtoint(strsep(&mode, "@"), 10, &depth);
    92		if (ret)
    93			return ret;
    94	
    95		pd->stride = pd->width * depth / 8;
    96		pd->format = depth == 32 ? "a8r8g8b8" : "r5g6b5";
    97	
    98		return 0;
    99	}
   100	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
