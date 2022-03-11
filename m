Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7666C4D5B8E
	for <lists+openipmi-developer@lfdr.de>; Fri, 11 Mar 2022 07:21:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nSYej-0008Ef-5Z; Fri, 11 Mar 2022 06:21:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lkp@intel.com>) id 1nSYeh-0008E9-PE
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Mar 2022 06:21:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G2+S5MIdmylsmW0uIPoe6gUa7sh69fs0Q/N5aU5q+2M=; b=KwP8dYTlM8cAbF5OAy8M/PaITa
 IL58m+mojWt0ewx4HOqEwjKs1H2ItPkacb7E57uBAEuywt82JP1eu2gSu3Oa++MYB3IkbZk+LQgNI
 YrAKs2ObQCTetuP35cHPX8GhCZZixt6Iyw4437yyczgIyAopAWXWfuF98U5tB2+mGJAQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G2+S5MIdmylsmW0uIPoe6gUa7sh69fs0Q/N5aU5q+2M=; b=fYZyqrLquLZH0TTXbFmfXukz0m
 8BD0MOtukJ74OIhrtLkYtXdtlCXSL3dwTfqK6LgrMvOXAQdZqO20wtDwtdqYkYgWxBRwhE3fE0YxB
 nFaMQzdTENJS/NkzhjfkTwEkWqICFeQD8o7TudUFQAYYZwsutI4qJR13w1Bm4VVlnaXI=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSYed-0001Zj-O4
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Mar 2022 06:21:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646979695; x=1678515695;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6emc1AFaB06kmmYCtXfN6YMM1b/mUxC5G7/GppPZ660=;
 b=iyvW7TnE+GlcHMZLUaLLcbEE/prHE6eciBNPdHOZHpFf7UNy2jc7vmze
 bC2HDg9DGt+l3g1vwrMawI1SnnzEfLX2qAaTAU8VZOKc61K5odHkJKarP
 txMYUbud9VyoKLhD38PVPNMpv/WhXivgbMVz9Qv4OA+KibUu+L2vbAhA8
 9Pjb6DRaw2p1WaLrMA1s1ZqvGX+YznbweoSF1/tNEwsVHcoQ44qmbrBMi
 YtGUJ0+BTu9qHMXO+n9IyVFoAXzIrPsrEBNFejkUb+gHrDvUc1eV5BKvN
 u6CIoDkGtiCC1G70o6oMOo0fRKqSHjK5nfz82Jtbayy4oA4yyeG87Z1Fm Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="242958970"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="242958970"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 22:21:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="688975479"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2022 22:21:24 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nSYeS-0005vr-24; Fri, 11 Mar 2022 06:21:24 +0000
Date: Fri, 11 Mar 2022 14:20:44 +0800
From: kernel test robot <lkp@intel.com>
To: Quan Nguyen <quan@os.amperecomputing.com>,
 Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Wolfram Sang <wsa-dev@sang-engineering.com>,
 openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, openbmc@lists.ozlabs.org
Message-ID: <202203111440.hG9yioyl-lkp@intel.com>
References: <20220310114119.13736-2-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220310114119.13736-2-quan@os.amperecomputing.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -3.0 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Quan, I love your patch! Perhaps something to improve:
 [auto build test WARNING on char-misc/char-misc-testing] [also build test
 WARNING on wsa/i2c/for-next cminyard-ipmi/for-next v5.17-rc7 next-20220310]
 [If your patch is applied to the wrong git tree, k [...] 
 Content analysis details:   (-3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nSYed-0001Zj-O4
Subject: Re: [Openipmi-developer] [PATCH v6 1/4] ipmi: ssif_bmc: Add SSIF
 BMC driver
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
Cc: Open Source Submission <patches@amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>, kbuild-all@lists.01.org,
 Phong Vo <phong@os.amperecomputing.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Quan,

I love your patch! Perhaps something to improve:

[auto build test WARNING on char-misc/char-misc-testing]
[also build test WARNING on wsa/i2c/for-next cminyard-ipmi/for-next v5.17-rc7 next-20220310]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Quan-Nguyen/Add-SSIF-BMC-driver/20220310-194342
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git 3dd9a926ec2308e49445f22abef149fc64e9332e
config: mips-randconfig-s031-20220310 (https://download.01.org/0day-ci/archive/20220311/202203111440.hG9yioyl-lkp@intel.com/config)
compiler: mips-linux-gcc (GCC) 11.2.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # apt-get install sparse
        # sparse version: v0.6.4-dirty
        # https://github.com/0day-ci/linux/commit/a977225b8997c2fdb51eddeee79de36075d3ce4d
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Quan-Nguyen/Add-SSIF-BMC-driver/20220310-194342
        git checkout a977225b8997c2fdb51eddeee79de36075d3ce4d
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' O=build_dir ARCH=mips SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)
   command-line: note: in included file:
   builtin:1:9: sparse: sparse: preprocessor token __ATOMIC_ACQUIRE redefined
   builtin:0:0: sparse: this was the original definition
   builtin:1:9: sparse: sparse: preprocessor token __ATOMIC_SEQ_CST redefined
   builtin:0:0: sparse: this was the original definition
   builtin:1:9: sparse: sparse: preprocessor token __ATOMIC_ACQ_REL redefined
   builtin:0:0: sparse: this was the original definition
   builtin:1:9: sparse: sparse: preprocessor token __ATOMIC_RELEASE redefined
   builtin:0:0: sparse: this was the original definition
>> drivers/char/ipmi/ssif_bmc.c:181:27: sparse: sparse: incorrect type in initializer (different base types) @@     expected restricted __poll_t ( *poll )( ... ) @@     got unsigned int ( * )( ... ) @@
   drivers/char/ipmi/ssif_bmc.c:181:27: sparse:     expected restricted __poll_t ( *poll )( ... )
   drivers/char/ipmi/ssif_bmc.c:181:27: sparse:     got unsigned int ( * )( ... )

vim +181 drivers/char/ipmi/ssif_bmc.c

   171	
   172	/*
   173	 * System calls to device interface for user apps
   174	 */
   175	static const struct file_operations ssif_bmc_fops = {
   176		.owner		= THIS_MODULE,
   177		.open		= ssif_bmc_open,
   178		.read		= ssif_bmc_read,
   179		.write		= ssif_bmc_write,
   180		.release	= ssif_bmc_release,
 > 181		.poll		= ssif_bmc_poll,
   182	};
   183	

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
