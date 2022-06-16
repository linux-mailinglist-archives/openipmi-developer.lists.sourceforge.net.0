Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A1F54EA7F
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jun 2022 22:05:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o1vk8-0000PD-Tu; Thu, 16 Jun 2022 20:05:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lkp@intel.com>) id 1o1vk7-0000P7-F5
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jun 2022 20:05:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NSX191E1qnHCvH6XddD1ldzCiDbd4InR3MSJQyoy9ME=; b=it8v5/yw6++kxQzY1LTlEQpSt0
 63j4Iqd7PYnRgr7Ng2YW/4nGUz0cR2cuqJJh5rOQxczAKhlLIzFKooVLrEl0wsQKsjrcsmtiPJLHy
 cFujblBofqURWG5tuOUp5fY3rOZ1iG872ndsaOSCW2aOvtPGa7N6FlLB3jqbnYTGmLBc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NSX191E1qnHCvH6XddD1ldzCiDbd4InR3MSJQyoy9ME=; b=ik52R6e9VkxZ4c7GO0iOojwjPq
 S8GQnt94S9vWtYZv6OPif2LamS94yLuGQW/r3cQNVymASR+OuaPyVvAgC6xoX6PX1sH2JBZTNbtEM
 rlFnYEKFqiUtI6WtaVy0lkI7UJiWpWzKoo1tMBoHmz3x6B3+Dkdto/KTbwK08Kesi/T0=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1vk4-004SSw-7d
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jun 2022 20:05:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655409924; x=1686945924;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=v8nKn3u5HYJV1okOhvCdZ6oJQPkGSyi/IKm0G/s0MXY=;
 b=Kw1qAwAkt+w0FfW6jDZvHcJylAwg6Fh9CmTwD9GC+N7ffnMjdVKhicL+
 S7I8v/kEbxQen5hJ4bR55gd7Z8qbAhKhSsIjMZxyZ9JFukwia1NgyvLcY
 DXHJHhJrqhfEt7KrkvFE4hL1+VlW0pFAl2Swi6lnzlyHHWPSsLKSBoe3X
 K0Kb8mhbkWE6ogZPowxEVlvBkZcoCkkxyt2rUXt0rOBrt52j8j6wV9DDx
 2CtzeB4htRAiQnT+5/NrKkS95XFV6vJQjVEhnhsLJ+IxCAspiUslzNXVj
 1UIcW3N6a1bbtTfxWpFIjn1S8rCxCwf44uRaPoSYSAgusO7LMFluZw9xk g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259800722"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="259800722"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 13:05:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="589791945"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jun 2022 13:05:13 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o1vjs-000Oj3-Vy;
 Thu, 16 Jun 2022 20:05:12 +0000
Date: Fri, 17 Jun 2022 04:04:50 +0800
From: kernel test robot <lkp@intel.com>
To: Quan Nguyen <quan@os.amperecomputing.com>,
 Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Wolfram Sang <wsa-dev@sang-engineering.com>,
 openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, openbmc@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Message-ID: <202206170337.0kCTfR63-lkp@intel.com>
References: <20220615090259.1121405-2-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220615090259.1121405-2-quan@os.amperecomputing.com>
X-Spam-Score: -3.2 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Quan, I love your patch! Yet something to improve: [auto
 build test ERROR on cminyard-ipmi/for-next] [also build test ERROR on
 wsa/i2c/for-next
 v5.19-rc2 next-20220616] [If your patch is applied to the wrong git tree,
 kindly drop us a note. And when s [...] 
 Content analysis details:   (-3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o1vk4-004SSw-7d
Subject: Re: [Openipmi-developer] [PATCH v8 1/3] ipmi: ssif_bmc: Add SSIF
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
Cc: Open Source Submission <patches@amperecomputing.com>, llvm@lists.linux.dev,
 kbuild-all@lists.01.org, Phong Vo <phong@os.amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Quan,

I love your patch! Yet something to improve:

[auto build test ERROR on cminyard-ipmi/for-next]
[also build test ERROR on wsa/i2c/for-next v5.19-rc2 next-20220616]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Quan-Nguyen/Add-SSIF-BMC-driver/20220615-170539
base:   https://github.com/cminyard/linux-ipmi for-next
config: i386-randconfig-a006 (https://download.01.org/0day-ci/archive/20220617/202206170337.0kCTfR63-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project f0e608de27b3d568000046eebf3712ab542979d6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/0feb5f0351d090633e7522dbec22de419a04b85f
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Quan-Nguyen/Add-SSIF-BMC-driver/20220615-170539
        git checkout 0feb5f0351d090633e7522dbec22de419a04b85f
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from <built-in>:1:
>> ./usr/include/linux/ipmi_ssif_bmc.h:13:2: error: unknown type name '__u8'
           __u8    payload[IPMI_SSIF_PAYLOAD_MAX];
           ^
   1 error generated.

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
