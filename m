Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B90AE226F
	for <lists+openipmi-developer@lfdr.de>; Fri, 20 Jun 2025 20:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wiQdTc92xughiXRbgnHVS7V5hjtbO/k0bG2/VLRJRug=; b=VMOClUw9dLvZzzLH+0fBqvmG5S
	yuOOJG1Etz1hHCoUFVc0HkoW/IFUxrxYRzEBhLh6Z8YDb+fooaySxLJNNigykb0aecKDcoRaRTkAr
	OVVVWjccjSAjOX2YFGE/2Egw8RGmUH5S0Iuwj/49Ywy6bfmbVKu8NxSHIID3Qn+dbieg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uSgjq-0007QC-7d;
	Fri, 20 Jun 2025 18:45:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1uSgji-0007Py-Rn
 for openipmi-developer@lists.sourceforge.net;
 Fri, 20 Jun 2025 18:45:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xhEqzwlG0rgPqetqJt9FsG9qTc3kxZ8uahIt/vZjCIo=; b=BLzId2TSEGR151wLKRVrwANd4M
 tKL/Ry6QQVVGSKmIUbkY+0Zh0swlPtBHDaPvakwgmlmAoG3VepsafZro2l8WOk3802XFbr0UKV71s
 Nvmipu1OeDscORefz522C1FhxKPZIgrCQeSHwmGHvJS3ihQ4KbWvFs3NNGIQ7BTFtTkE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xhEqzwlG0rgPqetqJt9FsG9qTc3kxZ8uahIt/vZjCIo=; b=KI6/TpLvt+5uu4wj3/Kr71DQrq
 K8GZ7G5DejkeS6B3bV0FMba1fI0npiF8KUvubxZULUQf2u2XyAEcO6lLklKjRKJ6KcsdUue5Wfq0F
 6+EXIzy23E279IV3z7n4r78MMjTsNurpzPu5l6lPqoNohMmji7Nj7ZLD83XmNlg/nJc4=;
Received: from mgamail.intel.com ([192.198.163.17])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uSgje-00082g-T9 for openipmi-developer@lists.sourceforge.net;
 Fri, 20 Jun 2025 18:45:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750445111; x=1781981111;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tFzOKcTfQ1YkHVKMtFqzZuzolJQlTQFSuPLWm8B24PU=;
 b=ArkxbgGErDDnMZ7wdLCLeBiL8zzhOI3yNPJewthwGqBz+tmelWEGa9oS
 JAKBedfO7bapZwYpWx+tRNDITVc/OaXRvgmnGt9pczzQYzZgTweEHmhjx
 3xQvptS7xo1o46Db9B7UbzdGHkqeB6xBSa0EiJ9KcXOtHq5hnpnUgBcSu
 iYt0zaUJS8nAjJ6/ljYZwUlTYn4hkjNABxjUcS2Tk0Mfx9pgJgjpz8SPt
 ystQundrWFiUt7F4slZ1M/nHGeUQgFtHIL29ejfs9WzZOZb+rxpPtMEDc
 8nx3K7NZ8vsPglGmAnDdegUc+F5HU34ayJlvNuI7a85FcYL39x2kqzPuW Q==;
X-CSE-ConnectionGUID: XibGlFI4QRy6ACQr4gdN9A==
X-CSE-MsgGUID: vuTnQpviR86JIP1Q/bQrbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="52647018"
X-IronPort-AV: E=Sophos;i="6.16,252,1744095600"; d="scan'208";a="52647018"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2025 11:45:01 -0700
X-CSE-ConnectionGUID: 27Peo85NRgSzNvQWq0zWuw==
X-CSE-MsgGUID: Y7tbg/eIT3yP5ZRghFZSzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,252,1744095600"; d="scan'208";a="150474036"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 20 Jun 2025 11:44:57 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uSgjO-000M4M-2S;
 Fri, 20 Jun 2025 18:44:54 +0000
Date: Sat, 21 Jun 2025 02:44:02 +0800
From: kernel test robot <lkp@intel.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou <zhoubb.aaron@gmail.com>,
 Huacai Chen <chenhuacai@loongson.cn>, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>
Message-ID: <202506210231.ZWWNhofU-lkp@intel.com>
References: <82cbc8558f15981e0953ab229d2afcc5501f982c.1750301674.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82cbc8558f15981e0953ab229d2afcc5501f982c.1750301674.git.zhoubinbin@loongson.cn>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uSgje-00082g-T9
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
config: x86_64-buildonly-randconfig-003-20250621 (https://download.01.org/0day-ci/archive/20250621/202506210231.ZWWNhofU-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250621/202506210231.ZWWNhofU-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202506210231.ZWWNhofU-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/mfd/ls2k-bmc-core.c:152:1: warning: data definition has no type or storage class
     152 | module_pci_driver(ls2k_bmc_driver);
         | ^~~~~~~~~~~~~~~~~
   drivers/mfd/ls2k-bmc-core.c:152:1: error: type defaults to 'int' in declaration of 'module_pci_driver' [-Werror=implicit-int]
>> drivers/mfd/ls2k-bmc-core.c:152:1: warning: parameter names (without types) in function declaration
   drivers/mfd/ls2k-bmc-core.c:146:26: warning: 'ls2k_bmc_driver' defined but not used [-Wunused-variable]
     146 | static struct pci_driver ls2k_bmc_driver = {
         |                          ^~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +152 drivers/mfd/ls2k-bmc-core.c

   145	
   146	static struct pci_driver ls2k_bmc_driver = {
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
