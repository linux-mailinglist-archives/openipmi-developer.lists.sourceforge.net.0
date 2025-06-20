Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57262AE2245
	for <lists+openipmi-developer@lfdr.de>; Fri, 20 Jun 2025 20:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vIsL/CS4HYIOSUas9SV56DSb/i8+msVi4hFaF0+t3WI=; b=g+Dbf9LRLUp2iGcQyPy2sSCQla
	cj/F5rtsTregezA2TNA50VCvEdOk3M1pvwJbS6kiSW0VM8XmY7twtHJbGPzDge7DngaNCPup5/tIe
	MN0m1aHJKceS4VEHUX06Qhg/lmfmFOl7bL5MNPa0luYYpv7xxpRqbnod98Rtgr6UC6Fg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uSgYw-0005Co-CC;
	Fri, 20 Jun 2025 18:34:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1uSgYv-0005Ci-H2
 for openipmi-developer@lists.sourceforge.net;
 Fri, 20 Jun 2025 18:34:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E6xLGyQJJ8+SisLZSAt0HTIFl8CWdYxSifDHhfY76eo=; b=BKCDyffAfMrS+p3hCNmJn1mNTw
 qvcvYTBU2tzdkrGF58LfEMkG7Im20Vc/4XlIburWWW/JVHzP04Ny92kvu9Qzs8ps0YS90/HsyB0ai
 nnAWZpne1Ma32FUGY87FKkRGfyVWM9bN9Z60aYG9NZAEGS7p6CyVbhqImAFvr8cd5kJI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E6xLGyQJJ8+SisLZSAt0HTIFl8CWdYxSifDHhfY76eo=; b=YyiWdMUokK5NKHn1+sBiVW9R5l
 JgZGkiraEzDgkE+u5FVNyTaQVnDY/cj3+iDxOnTlXUl/VvNie9mkx4ihCwWN1YwK78CYiDZtcCY5p
 REua6kgNnhh4j0ZA3piNc3MhhaWubz07xKUbsor0yg+lxL6oEU2InQc7tFMVASMBoF84=;
Received: from mgamail.intel.com ([198.175.65.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uSgYv-0006yo-0M for openipmi-developer@lists.sourceforge.net;
 Fri, 20 Jun 2025 18:34:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750444445; x=1781980445;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9iYNcVBaPb4Hwav7FShaIAw0RUnIu6JSzpcwtAcLNMM=;
 b=IT7sDrppDQ3NybjVzXll7ctjYWNzOWKuo+g41ZfYOAMTGcUEbsJ+jP9c
 EL4VvFucdCXz3HU2jyclMWc5weDS6yYVf4Ew9jwXZHogoPpEkc0yFirSz
 cNjrlsj23ICjCc88pXOXg0F8gLQxleNf4nJyUYqbndJfMx+yMw867VdiY
 XFVuA6wgVnbKB/IRhF+ga6IutYqIh/G8e0aq3FVx2WN6DVNx4xgQBg9PK
 wnmvMFAqvuNjiPK2pNov9BFWaXAo6Q5g5/lUJxz1mjknX5egM5TzW1Tmp
 40b72zrJyHoOmonHT+IretJa3otzUJL0TI7QE6T6jl9BL/imL5jlv6Jt2 g==;
X-CSE-ConnectionGUID: Aqu0g4lrS0KulxlCRHFulA==
X-CSE-MsgGUID: dg+RYw4kSXSuIW5nD6HMrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="52418281"
X-IronPort-AV: E=Sophos;i="6.16,252,1744095600"; d="scan'208";a="52418281"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 11:33:59 -0700
X-CSE-ConnectionGUID: KE/vH0clTAqEFqMxLdv6Nw==
X-CSE-MsgGUID: xzV2Q7uAQQeGURIg7qUp5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,252,1744095600"; d="scan'208";a="150779283"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 20 Jun 2025 11:33:56 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uSgYj-000M42-1D;
 Fri, 20 Jun 2025 18:33:53 +0000
Date: Sat, 21 Jun 2025 02:33:50 +0800
From: kernel test robot <lkp@intel.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou <zhoubb.aaron@gmail.com>,
 Huacai Chen <chenhuacai@loongson.cn>, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>
Message-ID: <202506210204.LVZc2VG2-lkp@intel.com>
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
X-Headers-End: 1uSgYv-0006yo-0M
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

kernel test robot noticed the following build errors:

[auto build test ERROR on 8ffcb7560b4a15faf821df95e3ab532b2b020f8c]

url:    https://github.com/intel-lab-lkp/linux/commits/Binbin-Zhou/mfd-ls2kbmc-Introduce-Loongson-2K-BMC-core-driver/20250620-100856
base:   8ffcb7560b4a15faf821df95e3ab532b2b020f8c
patch link:    https://lore.kernel.org/r/82cbc8558f15981e0953ab229d2afcc5501f982c.1750301674.git.zhoubinbin%40loongson.cn
patch subject: [PATCH v5 1/3] mfd: ls2kbmc: Introduce Loongson-2K BMC core driver
config: m68k-allyesconfig (https://download.01.org/0day-ci/archive/20250621/202506210204.LVZc2VG2-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 15.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250621/202506210204.LVZc2VG2-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506210204.LVZc2VG2-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

>> drivers/mfd/ls2k-bmc-core.c:152:1: warning: data definition has no type or storage class
     152 | module_pci_driver(ls2k_bmc_driver);
         | ^~~~~~~~~~~~~~~~~
>> drivers/mfd/ls2k-bmc-core.c:152:1: error: type defaults to 'int' in declaration of 'module_pci_driver' [-Wimplicit-int]
>> drivers/mfd/ls2k-bmc-core.c:152:1: error: parameter names (without types) in function declaration [-Wdeclaration-missing-parameter-type]
>> drivers/mfd/ls2k-bmc-core.c:146:26: warning: 'ls2k_bmc_driver' defined but not used [-Wunused-variable]
     146 | static struct pci_driver ls2k_bmc_driver = {
         |                          ^~~~~~~~~~~~~~~


vim +152 drivers/mfd/ls2k-bmc-core.c

   145	
 > 146	static struct pci_driver ls2k_bmc_driver = {
   147		.name = "ls2k-bmc",
   148		.id_table = ls2k_bmc_devices,
   149		.probe = ls2k_bmc_probe,
   150		.remove = ls2k_bmc_remove,
   151	};
 > 152	module_pci_driver(ls2k_bmc_driver);
   153	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
