Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 264447B5D85
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 Oct 2023 01:05:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnRyT-00081V-Lj;
	Mon, 02 Oct 2023 23:05:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1qnRyS-00081P-KO
 for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 23:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4cSXb4QokhVhuYrsFzXSiOFCdwbtTVMZX8i3son5awQ=; b=QMXzgeY+v5ntena1HhCHhYqHi9
 uPJzA94FGMf7EMFvb/0RdFEgM33WNTh069rKm3PmcHhw6xL5ucbqp2w70+NoJrYiUJ+y/aNfdwmXl
 Cz2nFujGMIe+x2ef0hFinIt3jxJkpEXGxpVgqXZGsTvnN20t6HxjPCUsM05SElSN508w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4cSXb4QokhVhuYrsFzXSiOFCdwbtTVMZX8i3son5awQ=; b=KozB/z3opR2GW5MoFh+SPdPYo+
 2rX/ysMw3jMafM6bs4ajNoWRmv5SdTXXhVjBBKjWD4ehHs8jO0I6Ci8p1LeEG1hfWOwEv+55wW5Wm
 ufIOFKGNITahUyuJxqONq/9IjJmzn+gU1kebX2Dn1eqNvana4jtIML4U5mwQyzmTw070=;
Received: from mgamail.intel.com ([134.134.136.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnRyP-00GeKp-Oe for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 23:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696287909; x=1727823909;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=W+wHs3ShPE3V3vqCEk3iLvApEclOhjapQFsJWjm31Jg=;
 b=dKMQtwxN3gq+4KiQ7OGhgqJGIzbTIY7gLKWcHDxx15V/Q65YMgN8Qms6
 QqKDovZ7QdQ0i7nR3vPHpvhjWkgrCLdDnFptLCwLELEinaxsF4vKSc3k/
 4Jy3XjeZWWevxRzEFo9LJuw9b2jnyiyaMfzeMw89IiI+8vu8dR8PT+tuh
 lHing0Rg0AAO7CJ1wr8jK0bc/0YR/sL+ew7VR8ng+gO2nZJXnXG3x5Tg0
 95VyzSe8OmZKTHLcR3DYO3n1opR/njmQB4iLn3zrdBhRUrznOy1ghFheA
 CFei9FsjVy4GobgtlzMYaxLWK13ZPu9xqQ2sDGhIeG5nxWTxk86NkfugJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="385578741"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="385578741"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 16:05:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="821030060"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="821030060"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 02 Oct 2023 16:04:55 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qnRy9-0006Ud-2j;
 Mon, 02 Oct 2023 23:04:53 +0000
Date: Tue, 3 Oct 2023 07:04:37 +0800
From: kernel test robot <lkp@intel.com>
To: Konstantin Aladyshev <aladyshev22@gmail.com>
Message-ID: <202310030640.tYeSJjeI-lkp@intel.com>
References: <20231002143441.545-4-aladyshev22@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231002143441.545-4-aladyshev22@gmail.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Konstantin, kernel test robot noticed the following build
 warnings: [auto build test WARNING on cminyard-ipmi/for-next] [also build
 test WARNING on linus/master v6.6-rc4 next-20230929] [If your patch is applied
 to the wrong git tree, kindly drop us a note. And when su [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qnRyP-00GeKp-Oe
Subject: Re: [Openipmi-developer] [PATCH v2 3/3] mctp: Add MCTP-over-KCS
 transport binding
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on cminyard-ipmi/for-next]
[also build test WARNING on linus/master v6.6-rc4 next-20230929]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Konstantin-Aladyshev/ipmi-Move-KCS-headers-to-common-include-folder/20231002-223632
base:   https://github.com/cminyard/linux-ipmi for-next
patch link:    https://lore.kernel.org/r/20231002143441.545-4-aladyshev22%40gmail.com
patch subject: [PATCH v2 3/3] mctp: Add MCTP-over-KCS transport binding
config: sh-allyesconfig (https://download.01.org/0day-ci/archive/20231003/202310030640.tYeSJjeI-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231003/202310030640.tYeSJjeI-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310030640.tYeSJjeI-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/mctp/mctp-kcs.c: In function 'kcs_bmc_mctp_add_device':
>> drivers/net/mctp/mctp-kcs.c:494:31: warning: passing argument 2 of 'dev_err_probe' makes integer from pointer without a cast [-Wint-conversion]
     494 |                               "alloc_netdev failed for KCS channel %d\n",
         |                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                               |
         |                               char *
   In file included from include/linux/device.h:15,
                    from include/linux/acpi.h:14,
                    from include/linux/i2c.h:13,
                    from drivers/net/mctp/mctp-kcs.c:16:
   include/linux/dev_printk.h:277:64: note: expected 'int' but argument is of type 'char *'
     277 | __printf(3, 4) int dev_err_probe(const struct device *dev, int err, const char *fmt, ...);
         |                                                            ~~~~^~~
>> drivers/net/mctp/mctp-kcs.c:495:38: warning: passing argument 3 of 'dev_err_probe' makes pointer from integer without a cast [-Wint-conversion]
     495 |                               kcs_bmc->channel);
         |                               ~~~~~~~^~~~~~~~~
         |                                      |
         |                                      u32 {aka unsigned int}
   include/linux/dev_printk.h:277:81: note: expected 'const char *' but argument is of type 'u32' {aka 'unsigned int'}
     277 | __printf(3, 4) int dev_err_probe(const struct device *dev, int err, const char *fmt, ...);
         |                                                                     ~~~~~~~~~~~~^~~
   drivers/net/mctp/mctp-kcs.c:507:25: warning: passing argument 2 of 'dev_err_probe' makes integer from pointer without a cast [-Wint-conversion]
     507 |                         "failed to allocate data_in buffer for KCS channel %d\n",
         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                         |
         |                         char *
   include/linux/dev_printk.h:277:64: note: expected 'int' but argument is of type 'char *'
     277 | __printf(3, 4) int dev_err_probe(const struct device *dev, int err, const char *fmt, ...);
         |                                                            ~~~~^~~
   drivers/net/mctp/mctp-kcs.c:508:32: warning: passing argument 3 of 'dev_err_probe' makes pointer from integer without a cast [-Wint-conversion]
     508 |                         kcs_bmc->channel);
         |                         ~~~~~~~^~~~~~~~~
         |                                |
         |                                u32 {aka unsigned int}
   include/linux/dev_printk.h:277:81: note: expected 'const char *' but argument is of type 'u32' {aka 'unsigned int'}
     277 | __printf(3, 4) int dev_err_probe(const struct device *dev, int err, const char *fmt, ...);
         |                                                                     ~~~~~~~~~~~~^~~
   drivers/net/mctp/mctp-kcs.c:516:25: warning: passing argument 2 of 'dev_err_probe' makes integer from pointer without a cast [-Wint-conversion]
     516 |                         "failed to allocate data_out buffer for KCS channel %d\n",
         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                         |
         |                         char *
   include/linux/dev_printk.h:277:64: note: expected 'int' but argument is of type 'char *'
     277 | __printf(3, 4) int dev_err_probe(const struct device *dev, int err, const char *fmt, ...);
         |                                                            ~~~~^~~
   drivers/net/mctp/mctp-kcs.c:517:32: warning: passing argument 3 of 'dev_err_probe' makes pointer from integer without a cast [-Wint-conversion]
     517 |                         kcs_bmc->channel);
         |                         ~~~~~~~^~~~~~~~~
         |                                |
         |                                u32 {aka unsigned int}
   include/linux/dev_printk.h:277:81: note: expected 'const char *' but argument is of type 'u32' {aka 'unsigned int'}
     277 | __printf(3, 4) int dev_err_probe(const struct device *dev, int err, const char *fmt, ...);
         |                                                                     ~~~~~~~~~~~~^~~


vim +/dev_err_probe +494 drivers/net/mctp/mctp-kcs.c

   481	
   482	static int kcs_bmc_mctp_add_device(struct kcs_bmc_device *kcs_bmc)
   483	{
   484		struct mctp_kcs *mkcs;
   485		struct net_device *ndev;
   486		char name[32];
   487		int rc;
   488	
   489		snprintf(name, sizeof(name), "mctpkcs%d", kcs_bmc->channel);
   490	
   491		ndev = alloc_netdev(sizeof(*mkcs), name, NET_NAME_ENUM, mctp_kcs_setup);
   492		if (!ndev) {
   493			dev_err_probe(kcs_bmc->dev,
 > 494				      "alloc_netdev failed for KCS channel %d\n",
 > 495				      kcs_bmc->channel);
   496			return -ENOMEM;
   497		}
   498	
   499		mkcs = netdev_priv(ndev);
   500		mkcs->netdev = ndev;
   501		mkcs->client.dev = kcs_bmc;
   502		mkcs->client.ops = &kcs_bmc_mctp_client_ops;
   503		mkcs->data_in = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
   504		if (!mkcs->data_in) {
   505			dev_err_probe(
   506				kcs_bmc->dev,
   507				"failed to allocate data_in buffer for KCS channel %d\n",
   508				kcs_bmc->channel);
   509			rc = -ENOMEM;
   510			goto free_netdev;
   511		}
   512		mkcs->data_out = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
   513		if (!mkcs->data_out) {
   514			dev_err_probe(
   515				kcs_bmc->dev,
   516				"failed to allocate data_out buffer for KCS channel %d\n",
   517				kcs_bmc->channel);
   518			rc = -ENOMEM;
   519			goto free_netdev;
   520		}
   521	
   522		INIT_WORK(&mkcs->rx_work, mctp_kcs_rx_work);
   523	
   524		rc = register_netdev(ndev);
   525		if (rc)
   526			goto free_netdev;
   527	
   528		spin_lock_irq(&kcs_bmc_mctp_instances_lock);
   529		list_add(&mkcs->entry, &kcs_bmc_mctp_instances);
   530		spin_unlock_irq(&kcs_bmc_mctp_instances_lock);
   531	
   532		dev_info(kcs_bmc->dev, "Add MCTP client for the KCS channel %d",
   533			 kcs_bmc->channel);
   534		return 0;
   535	
   536	free_netdev:
   537		free_netdev(ndev);
   538	
   539		return rc;
   540	}
   541	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
