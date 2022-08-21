Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B21C059B629
	for <lists+openipmi-developer@lfdr.de>; Sun, 21 Aug 2022 21:47:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oPquf-0006fW-HC;
	Sun, 21 Aug 2022 19:47:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oPqud-0006fQ-Lc
 for openipmi-developer@lists.sourceforge.net;
 Sun, 21 Aug 2022 19:47:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mvt0rSaSMk9M+kzM4bLQuUPj9iB6oqBHFzFhPx+/HuU=; b=COkpfbsbTraJwRLgxWg2DZ7QOp
 P/zrHX+fvSK+TKCdol4/3EIatFoGR38MGs9ahmBy1mhOmvGvH9Ja95CXgwe5fZQ3aee5Eg7xniACy
 1PZQ73Hbc5Et9hDL/apx6M90PNqB0Putu3vhQ14mVWqHQVarxTw0YUb1k4JH7sbKeZfo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mvt0rSaSMk9M+kzM4bLQuUPj9iB6oqBHFzFhPx+/HuU=; b=NL/5YTcNu4ebBkv26ggiYDDrxV
 68LghVvfyhQW84j5hmGBFQp57Uwz6kbHE402vfc2BNUzm+bXA05cB/O/GdNIwNt8tHq0rOzspQDjP
 4tO5KjwoUIoC849rV168/LiRhqSjOq+5FbFIERHdzsEmgPfbK5gE+dN0S/alcLGsN5cc=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oPquc-00CAgu-6d for openipmi-developer@lists.sourceforge.net;
 Sun, 21 Aug 2022 19:47:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661111230; x=1692647230;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Xgq5pV8NmzafHjaVV82jPIGbVdCuhC2gTgsrPRjWnRk=;
 b=VxYQneZlnP9QqWNlEFlao9d6zDzGVjhsn/b81zxq+gBqBLKbJnqp6yWK
 wicd3akINOAnVlpX584Ge1Na55eBibg4NdGnUpW14OnKUjG+2zuRWK3UO
 5wqnVcQsU/KuTdkZGF1AybBcwrVBA1XP2hAEJ7oTy9+a7QYneslS7h6/A
 D4zeLQqz4ZAf6u5iQEtttqgLp4STDVlGH9Cjk33Gh0Ogf9I1+8O4R85pa
 4Gsq8EHnxeN8l8edcy4wUdXzHeYZc9s0Hbwy20x9gLUe/3b8qve/W/NS1
 k+inY/tFnT2Qx038y8dbjUlXrVcPJ6zYpLQBEFDDHpH7+LE/aoIPIiCFg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="273031809"
X-IronPort-AV: E=Sophos;i="5.93,253,1654585200"; d="scan'208";a="273031809"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2022 12:47:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,253,1654585200"; d="scan'208";a="559496311"
Received: from lkp-server01.sh.intel.com (HELO 44b6dac04a33) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 21 Aug 2022 12:47:01 -0700
Received: from kbuild by 44b6dac04a33 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oPquS-0004QP-2M;
 Sun, 21 Aug 2022 19:47:00 +0000
Date: Mon, 22 Aug 2022 03:46:33 +0800
From: kernel test robot <lkp@intel.com>
To: Igor Kononenko <i.kononenko@yadro.com>, Corey Minyard <minyard@acm.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Message-ID: <202208220317.cROZCTcB-lkp@intel.com>
References: <fb81dda34f9db0b9f743b247a2464576dcccd7c9.1661094034.git.i.kononenko@yadro.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb81dda34f9db0b9f743b247a2464576dcccd7c9.1661094034.git.i.kononenko@yadro.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Igor, Thank you for the patch! Yet something to improve:
 [auto build test ERROR on cminyard-ipmi/for-next] [also build test ERROR
 on soc/for-next linus/master v6.0-rc1 next-20220819] [If your patch is applied
 to the wrong git tree, kindly drop us a note. An [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oPquc-00CAgu-6d
Subject: Re: [Openipmi-developer] [PATCH 1/3] ipmi:kcs_bmc: Add cleanup
 regmap(interrupt-regs) on a shutdown.
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
Cc: Igor Kononenko <i.kononenko@yadro.com>, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, llvm@lists.linux.dev, linux-kernel@vger.kernel.org,
 kbuild-all@lists.01.org, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Igor,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on cminyard-ipmi/for-next]
[also build test ERROR on soc/for-next linus/master v6.0-rc1 next-20220819]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Igor-Kononenko/aspeed-lpc-Fix-lpc-snoop-probe-exception/20220822-000836
base:   https://github.com/cminyard/linux-ipmi for-next
config: riscv-randconfig-r042-20220821 (https://download.01.org/0day-ci/archive/20220822/202208220317.cROZCTcB-lkp@intel.com/config)
compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project 01ffe31cbb54bfd8e38e71b3cf804a1d67ebf9c1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/9c523bc00c11d0e9499bf6e3d3c5cc2fcf3fff8f
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Igor-Kononenko/aspeed-lpc-Fix-lpc-snoop-probe-exception/20220822-000836
        git checkout 9c523bc00c11d0e9499bf6e3d3c5cc2fcf3fff8f
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/char/ipmi/kcs_bmc_aspeed.c:10:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:136:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:37:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/char/ipmi/kcs_bmc_aspeed.c:10:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:136:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/char/ipmi/kcs_bmc_aspeed.c:10:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:136:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:1024:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/char/ipmi/kcs_bmc_aspeed.c:643:29: error: incompatible pointer types passing 'struct kcs_bmc *' to parameter of type 'struct kcs_bmc_device *' [-Werror,-Wincompatible-pointer-types]
           aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF), 0);
                                      ^~~~~~~
   drivers/char/ipmi/kcs_bmc_aspeed.c:399:63: note: passing argument to parameter 'kcs_bmc' here
   static void aspeed_kcs_irq_mask_update(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 state)
                                                                 ^
   7 warnings and 1 error generated.


vim +643 drivers/char/ipmi/kcs_bmc_aspeed.c

   638	
   639	static void aspeed_kcs_shutdown(struct platform_device *pdev)
   640	{
   641		struct kcs_bmc *kcs_bmc = dev_get_drvdata(&pdev->dev);
   642	
 > 643		aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF), 0);
   644	}
   645	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
