Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B536F4A60
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 May 2023 21:30:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ptvi6-00052n-Me;
	Tue, 02 May 2023 19:30:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1ptvi5-00052h-Nx
 for openipmi-developer@lists.sourceforge.net;
 Tue, 02 May 2023 19:30:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NFWWmbsc8hMMoqvorV27o4hxPl3F1ZzZjowvPgXTObQ=; b=fICIZyXVLf1QbX0KFrGkBChO5g
 LZ6VryMqw5BIhpYMBQ3GXFWxDzeGbvKzfbz+UP0qvQmnzhUjxWMMXaf461gxCHE1JPUkOve4KnZul
 LggzY2Xglow/a7dmihP/yH+E7ZaPWrG8vdMXNQdWE0L11gjMTM+/Cb3tVkgK5CGhHRBI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NFWWmbsc8hMMoqvorV27o4hxPl3F1ZzZjowvPgXTObQ=; b=YDqkaZuha5JEl3r5AmpwkRTQ/s
 8SJuE52Nov2lGjg6UQpccvQnpjSAK7i/L+vTlD8Y+MRgqU/bn17Uckd4MnVI7S+647Zsw2aJQuOW5
 Wqh4tHXaeF40oGymf/1ELwnSRckOaKJ5j3Ka6ft0M+aJLb+zY4Me1ciX52P9yAxTC+GA=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptvi0-0004zl-I0 for openipmi-developer@lists.sourceforge.net;
 Tue, 02 May 2023 19:30:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683055844; x=1714591844;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=fqVAFC1aALlJtYtuv9Mqx4JsMxvXvaDX4yanOKMFwaA=;
 b=L9k1MbXj8N3umWqMYV6q1DFK3NWCpiC2/5SyjCayETERH4fNVMMNxXU1
 1xXGh8qR4Gjydn8leJPqVaHVNK8RG7jRbUi7YyVrzby8qbTOpOGj+w+Ge
 JzJl9uwN46rhG+Ay8ryZ35uHBXQoB0OQsq6HXofmPDSUhhaiQ4yOn2Kup
 sl385bTwlPmVeiGNJqzy8VfTK0jbuI/DgDC84THey9pBReoSaYvnRMKgy
 BtarlGe0yFR5AZldhrUSdOfj+AsJ4A7VyEJEsPIlivw0qd14R+pBUXXqh
 5xp0wUCaGO6lmk0huj01T0Mj2Le2hoah6AEZ6sQ7lykrk9U1uwyQJfeMZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="413939434"
X-IronPort-AV: E=Sophos;i="5.99,245,1677571200"; d="scan'208";a="413939434"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 12:30:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="1026199976"
X-IronPort-AV: E=Sophos;i="5.99,245,1677571200"; d="scan'208";a="1026199976"
Received: from lkp-server01.sh.intel.com (HELO e3434d64424d) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 02 May 2023 12:30:36 -0700
Received: from kbuild by e3434d64424d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ptvhr-0001Fo-2P;
 Tue, 02 May 2023 19:30:35 +0000
Date: Wed, 3 May 2023 03:30:26 +0800
From: kernel test robot <lkp@intel.com>
To: minyard@acm.org, im Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>
Message-ID: <202305030305.ZLru06GG-lkp@intel.com>
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
 medium trust [134.134.136.100 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [134.134.136.100 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ptvi0-0004zl-I0
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
config: sparc-allyesconfig (https://download.01.org/0day-ci/archive/20230503/202305030305.ZLru06GG-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/3138708f587acacac7e95f3098e7a9587866a66e
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review minyard-acm-org/watchdog-Add-an-IPMI-watchdog-driver-in-the-watchdog-framework/20230502-230545
        git checkout 3138708f587acacac7e95f3098e7a9587866a66e
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=sparc olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=sparc SHELL=/bin/bash drivers/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202305030305.ZLru06GG-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/watchdog/ipmi_wdt.c:515:5: warning: no previous prototype for 'ipmi_wdt_start' [-Wmissing-prototypes]
     515 | int ipmi_wdt_start(struct watchdog_device *wd)
         |     ^~~~~~~~~~~~~~
>> drivers/watchdog/ipmi_wdt.c:529:5: warning: no previous prototype for 'ipmi_wdt_stop' [-Wmissing-prototypes]
     529 | int ipmi_wdt_stop(struct watchdog_device *wd)
         |     ^~~~~~~~~~~~~
>> drivers/watchdog/ipmi_wdt.c:539:5: warning: no previous prototype for 'ipmi_wdt_ping' [-Wmissing-prototypes]
     539 | int ipmi_wdt_ping(struct watchdog_device *wd)
         |     ^~~~~~~~~~~~~
>> drivers/watchdog/ipmi_wdt.c:550:5: warning: no previous prototype for 'ipmi_wdt_set_timeout' [-Wmissing-prototypes]
     550 | int ipmi_wdt_set_timeout(struct watchdog_device *wd, unsigned int to)
         |     ^~~~~~~~~~~~~~~~~~~~
   drivers/watchdog/ipmi_wdt.c:204:17: warning: 'preop_panic_excl' defined but not used [-Wunused-variable]
     204 | static atomic_t preop_panic_excl = ATOMIC_INIT(-1);
         |                 ^~~~~~~~~~~~~~~~


vim +/ipmi_wdt_start +515 drivers/watchdog/ipmi_wdt.c

   514	
 > 515	int ipmi_wdt_start(struct watchdog_device *wd)
   516	{
   517		int rv;
   518	
   519		mutex_lock(&ipmi_watchdog_mutex);
   520		ipmi_watchdog_state = action_val;
   521		rv = _ipmi_set_timeout(IPMI_SET_TIMEOUT_FORCE_HB);
   522		if (rv)
   523			ipmi_watchdog_state = WDOG_TIMEOUT_NONE;
   524		mutex_unlock(&ipmi_watchdog_mutex);
   525	
   526		return rv;
   527	}
   528	
 > 529	int ipmi_wdt_stop(struct watchdog_device *wd)
   530	{
   531		mutex_lock(&ipmi_watchdog_mutex);
   532		ipmi_watchdog_state = WDOG_TIMEOUT_NONE;
   533		_ipmi_set_timeout(IPMI_SET_TIMEOUT_NO_HB);
   534		mutex_unlock(&ipmi_watchdog_mutex);
   535	
   536		return 0;
   537	}
   538	
 > 539	int ipmi_wdt_ping(struct watchdog_device *wd)
   540	{
   541		int rv;
   542	
   543		mutex_lock(&ipmi_watchdog_mutex);
   544		rv = _ipmi_heartbeat();
   545		mutex_unlock(&ipmi_watchdog_mutex);
   546	
   547		return rv;
   548	}
   549	
 > 550	int ipmi_wdt_set_timeout(struct watchdog_device *wd, unsigned int to)
   551	{
   552		int rv;
   553	
   554		mutex_lock(&ipmi_watchdog_mutex);
   555		timeout = to;
   556		rv = _ipmi_set_timeout(IPMI_SET_TIMEOUT_HB_IF_NECESSARY);
   557		mutex_unlock(&ipmi_watchdog_mutex);
   558	
   559		return rv;
   560	}
   561	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
