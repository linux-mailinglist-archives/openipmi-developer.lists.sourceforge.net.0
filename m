Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB66AC9B0F
	for <lists+openipmi-developer@lfdr.de>; Sat, 31 May 2025 14:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SShdEPYmfSmfBhg1IhQW8nBHcL0QFTcFumNPtihAMIA=; b=Mb+VL4fVtjyDrMbuVYPR6u3gAi
	p4NsETxwsmAXTW6thfb4byIH9fpEUaf7RTqleKKi9uEX/PiYD9uUEZmL/RfRyU8W96giJFev3rvzr
	Yl3BNEGD1d8MiFI9zBXH8p9vHszTULLw8td3eZpTkixGMtURXOZ2gEFDU7P5v+0E3v7M=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uLLjI-0003xB-V0;
	Sat, 31 May 2025 12:54:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1uLLjH-0003x5-Dp
 for openipmi-developer@lists.sourceforge.net;
 Sat, 31 May 2025 12:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oTNPFM2y6W0IpkV/gHq10waorl0mR4X5Za6DiUflPNM=; b=c5tiMMyY95Z9LtRyfuHLgvPKux
 G2+GjV1u+/q7An9dOl+DgogPa/oqr1r79BjHcAnkInmKPh55+gXXKfDLVYpB6zqUhRwYGkaLb8/JF
 lUcNcOgeDMkWVzMzoEaV1/9fa7kcX7+t8uiawu6gPHcM0M2y9n28zAlVLr834IRlEV6k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oTNPFM2y6W0IpkV/gHq10waorl0mR4X5Za6DiUflPNM=; b=Z+1sAptQVYK8f89Trnk/BI3rFm
 838AerBmVoJpf4vymVYD119Kj0f4hJpPIRJmb/1SLw1bM883iYLsM1jpslZKrDnup4k1gHzubENuO
 D9TSVIjznr0cDDwzPveTmCEQljPNEK9jzh7cPafC0eJfMFhURfpUDOFcXmc0zO/4rg0M=;
Received: from mgamail.intel.com ([192.198.163.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uLLjD-0002eD-Gq for openipmi-developer@lists.sourceforge.net;
 Sat, 31 May 2025 12:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748696063; x=1780232063;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+EmJmBR4BbbJOaqh99VTAFfhrshaX7fqFFRRNgGBdFs=;
 b=Fhayj96liZqUn9+PYoeNMpJPyh21GCntKU56xJq/mjnvLJiWgfo3UwTb
 XJDTtXfpYo7qulQzd6mcWHMe0bS17Fm5fw7NCIegLlQanifn4LX1Hibk1
 KAOyH3C3rVwsCWNe4HAOswjqnag3VxNthr9cW5pHBRNkhQ12jSvWudxq4
 wQQP0vlUX79nt7J40EaPcGzr1ItPhoEVGEjm0Z4Vb332EFAckA5RCTRjM
 +dZ18P0CIsASQm7WDnCJWyOIj/OpPMq8lqoweSdnRT1MUgEIMj9nDMKk9
 j3y8jnFNWXSx8ZW1lC/ElBRv7b9R6pQgJK+sA4HjaqGE/BaTmPlwfkkFm Q==;
X-CSE-ConnectionGUID: 9PcP4ttIS1GRNnTYve4fvQ==
X-CSE-MsgGUID: BP8AdsnxR2ugIFQltBbDvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11450"; a="61398430"
X-IronPort-AV: E=Sophos;i="6.16,198,1744095600"; d="scan'208";a="61398430"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2025 05:54:13 -0700
X-CSE-ConnectionGUID: CBk3yu9jQiKyfvTpCjuIcg==
X-CSE-MsgGUID: ByTmpPphRiSlFVKyMFfvbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,198,1744095600"; d="scan'208";a="145093181"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 31 May 2025 05:54:10 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uLLix-000YPY-2T;
 Sat, 31 May 2025 12:54:07 +0000
Date: Sat, 31 May 2025 20:53:12 +0800
From: kernel test robot <lkp@intel.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou <zhoubb.aaron@gmail.com>,
 Huacai Chen <chenhuacai@loongson.cn>, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>
Message-ID: <202505312022.QmFmGE1F-lkp@intel.com>
References: <01805f8d1b9c8e6564a2d6d83964f78ed29b8f1f.1748505446.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <01805f8d1b9c8e6564a2d6d83964f78ed29b8f1f.1748505446.git.zhoubinbin@loongson.cn>
X-Spam-Score: -5.4 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Binbin,
 kernel test robot noticed the following build errors:
 [auto build test ERROR on 08effa6b77f7dbb4727f811daef0f6085c0d63c8] 
 Content analysis details:   (-5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.198.163.11 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.11 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.11 listed in sa-accredit.habeas.com]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.9 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uLLjD-0002eD-Gq
Subject: Re: [Openipmi-developer] [PATCH v3 2/3] ipmi: Add Loongson-2K BMC
 support
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

[auto build test ERROR on 08effa6b77f7dbb4727f811daef0f6085c0d63c8]

url:    https://github.com/intel-lab-lkp/linux/commits/Binbin-Zhou/mfd-ls2kbmc-Introduce-Loongson-2K-BMC-core-driver/20250529-202628
base:   08effa6b77f7dbb4727f811daef0f6085c0d63c8
patch link:    https://lore.kernel.org/r/01805f8d1b9c8e6564a2d6d83964f78ed29b8f1f.1748505446.git.zhoubinbin%40loongson.cn
patch subject: [PATCH v3 2/3] ipmi: Add Loongson-2K BMC support
config: loongarch-allmodconfig (https://download.01.org/0day-ci/archive/20250531/202505312022.QmFmGE1F-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 15.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250531/202505312022.QmFmGE1F-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202505312022.QmFmGE1F-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/char/ipmi/ipmi_si_ls2k.c:180:6: error: redefinition of 'ipmi_si_ls2k_init'
     180 | void ipmi_si_ls2k_init(void)
         |      ^~~~~~~~~~~~~~~~~
   In file included from drivers/char/ipmi/ipmi_si_ls2k.c:17:
   drivers/char/ipmi/ipmi_si.h:108:20: note: previous definition of 'ipmi_si_ls2k_init' with type 'void(void)'
     108 | static inline void ipmi_si_ls2k_init(void) { }
         |                    ^~~~~~~~~~~~~~~~~
>> drivers/char/ipmi/ipmi_si_ls2k.c:186:6: error: redefinition of 'ipmi_si_ls2k_shutdown'
     186 | void ipmi_si_ls2k_shutdown(void)
         |      ^~~~~~~~~~~~~~~~~~~~~
   drivers/char/ipmi/ipmi_si.h:109:20: note: previous definition of 'ipmi_si_ls2k_shutdown' with type 'void(void)'
     109 | static inline void ipmi_si_ls2k_shutdown(void) { }
         |                    ^~~~~~~~~~~~~~~~~~~~~


vim +/ipmi_si_ls2k_init +180 drivers/char/ipmi/ipmi_si_ls2k.c

   179	
 > 180	void ipmi_si_ls2k_init(void)
   181	{
   182		platform_driver_register(&ipmi_ls2k_platform_driver);
   183		ls2k_registered = true;
   184	}
   185	
 > 186	void ipmi_si_ls2k_shutdown(void)

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
