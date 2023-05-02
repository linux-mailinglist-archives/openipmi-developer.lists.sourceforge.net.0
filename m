Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC516F4B8B
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 May 2023 22:43:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ptwps-0000jX-Mb;
	Tue, 02 May 2023 20:42:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1ptwpr-0000jR-8Q
 for openipmi-developer@lists.sourceforge.net;
 Tue, 02 May 2023 20:42:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O7gTrKH64sd8tEtyLrwUh99VVrKG238uQRv0wgWxJZ4=; b=V4xxupF6bp+WwpDMZOCF3eMGT2
 HNUfXyek5k6Xttu6oh7xMypGOCCLgh/uf0R7+xXa9ulA9N3/uzlTlAgIuuuIs82gn2SFzELpAsDwt
 uVQBlJq3sgul4ttM1I4KCImOmT40wjviObJUnHCGzP0v9XwdX/USxs/ipcQ3LUhMhx6s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O7gTrKH64sd8tEtyLrwUh99VVrKG238uQRv0wgWxJZ4=; b=SyzcwvnPMZa44snuq8aJ7Uom0m
 yH3lQsj631gQskvKnOvMHY/fhgX88S2juXrbyWKp7cbpedDkISQmxlMerGuNQtvntZCGRtZddZuRP
 T5Pg6LfTn554q+uQa4qG0XVwqjbtC87+U/QgjU+ILanZGOEWRlqtjX0+CBsWMpuh0wt4=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptwpi-00076g-MQ for openipmi-developer@lists.sourceforge.net;
 Tue, 02 May 2023 20:42:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683060166; x=1714596166;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zuRYtcFHtmVZ+xkOvP47r2QSjBH2/ZdZZctN4FWn8n8=;
 b=CJYyEQRK1Zlp5WzGUA0iF8Z4lRB+FFXfPVhbs3r8dN8x1gOuQ910gkB/
 EkAWIVVoDd9qArtwBR9bzZ7NltxUIaXKBTYFmkkCCv4Ri7DDk4JXJosx8
 j/YX3TZJx4KB+n0BCftW/C39u4wBvaGpJfoao2KLshus7bXKHQKLm5GJx
 iF8phy9+RFsu4tbzeZbX+UG+n0ksxVwdGEz9qbT7Gawhtet9X+1A1tCb5
 oHvA7nkJLCjbS1EFYB66qVtGSo1BtvHtdV/0HUPK7ZEObr6OokdfMicD7
 AdxqU8O1XCYT95EWNJ8YOzTX5U8gQvln5CeM9y9vX0tMT8xkOZjL8hisZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="337635610"
X-IronPort-AV: E=Sophos;i="5.99,245,1677571200"; d="scan'208";a="337635610"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 13:42:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="690430355"
X-IronPort-AV: E=Sophos;i="5.99,245,1677571200"; d="scan'208";a="690430355"
Received: from lkp-server01.sh.intel.com (HELO e3434d64424d) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 02 May 2023 13:42:38 -0700
Received: from kbuild by e3434d64424d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ptwpZ-0001H8-1d;
 Tue, 02 May 2023 20:42:37 +0000
Date: Wed, 3 May 2023 04:42:24 +0800
From: kernel test robot <lkp@intel.com>
To: minyard@acm.org, im Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>
Message-ID: <202305030442.Ug9opjA1-lkp@intel.com>
References: <20230502150215.1266526-1-minyard@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230502150215.1266526-1-minyard@acm.org>
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, kernel test robot noticed the following build warnings:
 [auto build test WARNING on cminyard-ipmi/for-next] [also build test WARNING
 on groeck-staging/hwmon-next linus/master v6.3 next-20230428] [If your patch
 is applied to the wrong git tree, kindly drop [...] 
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ptwpi-00076g-MQ
Subject: Re: [Openipmi-developer] [PATCH] watchdog: Add an IPMI watchdog
 driver in the watchdog framework
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
Cc: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Corey Minyard <cminyard@mvista.com>, linux-watchdog@vger.kernel.org,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi,

kernel test robot noticed the following build warnings:

[auto build test WARNING on cminyard-ipmi/for-next]
[also build test WARNING on groeck-staging/hwmon-next linus/master v6.3 next-20230428]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/minyard-acm-org/watchdog-Add-an-IPMI-watchdog-driver-in-the-watchdog-framework/20230502-230545
base:   https://github.com/cminyard/linux-ipmi for-next
patch link:    https://lore.kernel.org/r/20230502150215.1266526-1-minyard%40acm.org
patch subject: [PATCH] watchdog: Add an IPMI watchdog driver in the watchdog framework
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20230503/202305030442.Ug9opjA1-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/3138708f587acacac7e95f3098e7a9587866a66e
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review minyard-acm-org/watchdog-Add-an-IPMI-watchdog-driver-in-the-watchdog-framework/20230502-230545
        git checkout 3138708f587acacac7e95f3098e7a9587866a66e
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 olddefconfig
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/watchdog/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202305030442.Ug9opjA1-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/watchdog/ipmi_wdt.c:515:5: warning: no previous prototype for 'ipmi_wdt_start' [-Wmissing-prototypes]
     515 | int ipmi_wdt_start(struct watchdog_device *wd)
         |     ^~~~~~~~~~~~~~
   drivers/watchdog/ipmi_wdt.c:529:5: warning: no previous prototype for 'ipmi_wdt_stop' [-Wmissing-prototypes]
     529 | int ipmi_wdt_stop(struct watchdog_device *wd)
         |     ^~~~~~~~~~~~~
   drivers/watchdog/ipmi_wdt.c:539:5: warning: no previous prototype for 'ipmi_wdt_ping' [-Wmissing-prototypes]
     539 | int ipmi_wdt_ping(struct watchdog_device *wd)
         |     ^~~~~~~~~~~~~
   drivers/watchdog/ipmi_wdt.c:550:5: warning: no previous prototype for 'ipmi_wdt_set_timeout' [-Wmissing-prototypes]
     550 | int ipmi_wdt_set_timeout(struct watchdog_device *wd, unsigned int to)
         |     ^~~~~~~~~~~~~~~~~~~~
>> drivers/watchdog/ipmi_wdt.c:563:5: warning: no previous prototype for 'ipmi_wdt_set_pretimeout' [-Wmissing-prototypes]
     563 | int ipmi_wdt_set_pretimeout(struct watchdog_device *wd, unsigned int pto)
         |     ^~~~~~~~~~~~~~~~~~~~~~~


vim +/ipmi_wdt_set_pretimeout +563 drivers/watchdog/ipmi_wdt.c

   561	
   562	#ifdef HAVE_DIE_NMI
 > 563	int ipmi_wdt_set_pretimeout(struct watchdog_device *wd, unsigned int pto)
   564	{
   565		int rv;
   566	
   567		mutex_lock(&ipmi_watchdog_mutex);
   568		pretimeout = pto;
   569		if (pto)
   570			pretimeout_state = WDOG_PRETIMEOUT_NMI;
   571		else
   572			pretimeout_state = WDOG_PRETIMEOUT_NONE;
   573	
   574		rv = _ipmi_set_timeout(IPMI_SET_TIMEOUT_HB_IF_NECESSARY);
   575		mutex_unlock(&ipmi_watchdog_mutex);
   576	
   577		return rv;
   578	}
   579	#endif
   580	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
