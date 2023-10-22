Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9D27D2084
	for <lists+openipmi-developer@lfdr.de>; Sun, 22 Oct 2023 02:16:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1quM9C-0004kw-DK;
	Sun, 22 Oct 2023 00:16:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1quM9B-0004kq-MW
 for openipmi-developer@lists.sourceforge.net;
 Sun, 22 Oct 2023 00:16:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7c4J8e+6lxp+tdujVoICLIuHRCWIzArks/4tsgzVXpU=; b=T1HkGA25kyjK+bUMGZx1HWjdhL
 9I/xL0MBXld4n3PI28m6Ffkbm4U+XyT56wPJMd3noPTMk07qevaIYOgjzp9GmQk+iTPNgtUipTE6l
 tLDCqyfKGfEt+9bEEIZzDgWCGwj8Zug6KZHxM8OC2w/CIDT6OJzQFlU528eDZopif8cc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7c4J8e+6lxp+tdujVoICLIuHRCWIzArks/4tsgzVXpU=; b=UGHXfEHO3u5vS6fB4XinAgLn6F
 9XanQOsQtAsKtDsPY7NiP19PrTF1m/J8qOegE0eH3d8VY75j6/Df3iH6ZZCYhIxHcqnNi6M4svBun
 af0Wjx9MYXq+/y7qjKY/dTUNqaWpYVMPAgiLeV48c9iGnFs97zg+1JlrT3EcPmU+HDw4=;
Received: from mgamail.intel.com ([192.55.52.120])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1quM96-005YyE-UK for openipmi-developer@lists.sourceforge.net;
 Sun, 22 Oct 2023 00:16:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697933804; x=1729469804;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1PiMnn0i3KT3YYOJNg9IYf4n+r48HTbs7kDucILde3I=;
 b=Pf2GCWSNYEtyWPOfGae1BWH722dJK15qcbPwu5eGQxzr/TeP18cHmJLP
 R+yUK3uZALmAcDwQ7EYvqcQpAe/5aMXSPrqK/cs0BGL0XjJvNqw43hJMn
 HX7EPxMb5xfcVyQPBnz305YQFGxMOje03ZLlxlA2NLGOpbpJSEQ5Hm6Oc
 QSzp703ZPdUKgOox7UAjSXbIKiTB9l/qxx8gH8oAnADMQlRDrOwxbAc1f
 wTt/vkiE6vzeOMsvuN7nVyQV+kidLDd6rmn5fSyuVZcvC/582/79dxeZU
 KXifONYhq1T5gLD/B8l3aC9yIVQjyjgvV8SwW12zhtWG9y//cbB237sHk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10870"; a="385554730"
X-IronPort-AV: E=Sophos;i="6.03,242,1694761200"; d="scan'208";a="385554730"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2023 17:16:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10870"; a="761389573"
X-IronPort-AV: E=Sophos;i="6.03,242,1694761200"; d="scan'208";a="761389573"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 21 Oct 2023 17:16:31 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1quM8s-0005Py-24;
 Sun, 22 Oct 2023 00:16:30 +0000
Date: Sun, 22 Oct 2023 08:16:25 +0800
From: kernel test robot <lkp@intel.com>
To: Konstantin Aladyshev <aladyshev22@gmail.com>
Message-ID: <202310220806.BmOW2atE-lkp@intel.com>
References: <20231010122321.823-2-aladyshev22@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231010122321.823-2-aladyshev22@gmail.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Konstantin, kernel test robot noticed the following build
 errors: [auto build test ERROR on cminyard-ipmi/for-next] [also build test
 ERROR on linus/master v6.6-rc6 next-20231020] [If your patch is applied to
 the wrong git tree, kindly drop us a note. And when submit [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1quM96-005YyE-UK
Subject: Re: [Openipmi-developer] [PATCH v5 1/3] ipmi: Move KCS headers to
 common include folder
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
Cc: tmaimon77@gmail.com, linux-aspeed@lists.ozlabs.org, tali.perry1@gmail.com,
 edumazet@google.com, jk@codeconstruct.com.au, matt@codeconstruct.com.au,
 benjaminfair@google.com, openbmc@lists.ozlabs.org, yuenn@google.com,
 kuba@kernel.org, pabeni@redhat.com, minyard@acm.org, aladyshev22@gmail.com,
 oe-kbuild-all@lists.linux.dev, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org, andrew@aj.id.au, venture@google.com,
 linux-kernel@vger.kernel.org, avifishman70@gmail.com, netdev@vger.kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Konstantin,

kernel test robot noticed the following build errors:

[auto build test ERROR on cminyard-ipmi/for-next]
[also build test ERROR on linus/master v6.6-rc6 next-20231020]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Konstantin-Aladyshev/ipmi-Move-KCS-headers-to-common-include-folder/20231010-202425
base:   https://github.com/cminyard/linux-ipmi for-next
patch link:    https://lore.kernel.org/r/20231010122321.823-2-aladyshev22%40gmail.com
patch subject: [PATCH v5 1/3] ipmi: Move KCS headers to common include folder
config: mips-allmodconfig (https://download.01.org/0day-ci/archive/20231022/202310220806.BmOW2atE-lkp@intel.com/config)
compiler: mips-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231022/202310220806.BmOW2atE-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310220806.BmOW2atE-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from include/linux/kcs_bmc_client.h:8,
                    from drivers/char/ipmi/kcs_bmc_cdev_ipmi.c:11:
>> include/linux/kcs_bmc.h:42:9: error: unknown type name 'spinlock_t'
      42 |         spinlock_t lock;
         |         ^~~~~~~~~~


vim +/spinlock_t +42 include/linux/kcs_bmc.h

faae6e391eda73 drivers/char/ipmi/kcs_bmc.h Andrew Jeffery 2021-06-08  31  
d4e7ac68f771ad drivers/char/ipmi/kcs_bmc.h Andrew Jeffery 2021-06-08  32  struct kcs_bmc_device {
d4e7ac68f771ad drivers/char/ipmi/kcs_bmc.h Andrew Jeffery 2021-06-08  33  	struct list_head entry;
20d60f61c58e8c drivers/char/ipmi/kcs_bmc.h Haiyue Wang    2018-02-02  34  
d4e7ac68f771ad drivers/char/ipmi/kcs_bmc.h Andrew Jeffery 2021-06-08  35  	struct device *dev;
20d60f61c58e8c drivers/char/ipmi/kcs_bmc.h Haiyue Wang    2018-02-02  36  	u32 channel;
20d60f61c58e8c drivers/char/ipmi/kcs_bmc.h Haiyue Wang    2018-02-02  37  
20d60f61c58e8c drivers/char/ipmi/kcs_bmc.h Haiyue Wang    2018-02-02  38  	struct kcs_ioreg ioreg;
20d60f61c58e8c drivers/char/ipmi/kcs_bmc.h Haiyue Wang    2018-02-02  39  
d4e7ac68f771ad drivers/char/ipmi/kcs_bmc.h Andrew Jeffery 2021-06-08  40  	const struct kcs_bmc_device_ops *ops;
20d60f61c58e8c drivers/char/ipmi/kcs_bmc.h Haiyue Wang    2018-02-02  41  
d4e7ac68f771ad drivers/char/ipmi/kcs_bmc.h Andrew Jeffery 2021-06-08 @42  	spinlock_t lock;
d4e7ac68f771ad drivers/char/ipmi/kcs_bmc.h Andrew Jeffery 2021-06-08  43  	struct kcs_bmc_client *client;
20d60f61c58e8c drivers/char/ipmi/kcs_bmc.h Haiyue Wang    2018-02-02  44  };
d4e7ac68f771ad drivers/char/ipmi/kcs_bmc.h Andrew Jeffery 2021-06-08  45  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
