Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 101537B289A
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Sep 2023 00:59:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qlzyB-0004P1-EE;
	Thu, 28 Sep 2023 22:58:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1qlzyA-0004Ov-9M
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 22:58:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IZY7Y3G20w3U3mYM+XnyJTyHhnJpojVlPrqGoVgZm/g=; b=GV/C6n4Ug6S7Lq9NLtkuyrnwIE
 lSmWxgupnDoO1b2SCekMVmgSP5oplNWyHpOXT0KE38JDZlr22x8s656TaeVnJVWbzJj3sUE5X9PWr
 ht7Y4JuiEbwXM+d2EIjAURoJPFgsqvmVhnUf3mAjKEbpQ8FoDjVEzZs6zbZiGjKycYk4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IZY7Y3G20w3U3mYM+XnyJTyHhnJpojVlPrqGoVgZm/g=; b=YnLNsoAuyGbdmNwf/UaYLQS8AI
 /W7oUngQTVrMrLjhlsaHU6hL/kcMOQS0XPQWm5tUT/PiwUPyobXCMCoTp3+jv6y9PJFH5u9LLKVPW
 TRemTGPouFXQsCWz8QBwcEKqQWEVZTtnOAOHjFbsrLULvIJlxg8CF3q5ssQQovd+qeZs=;
Received: from mgamail.intel.com ([192.55.52.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qlzy6-0005ob-RI for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 22:58:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695941931; x=1727477931;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UbGttFfuP6lw+hHb/xkwIGlEdNBxv5J2I9w5oq0PHfc=;
 b=PZDvYsmTaH3o2BmAKLKer5M2u4R2c8VWYVkMxbKaJLaszS4z9fakpYOb
 pl8WY9pV0QWCSC3g2Ov8cjFx1TkEIEqgA4TuDoWOFFXd76a5rYzqFH1U7
 0aYmttfXn/HXH5suG2IiqWffUTE/yZeUKqyyywzVR7pcKD9ZyjEwRqj4F
 ejMr8sHvdvThRIHvlIMFdhPkqAgLhwokMUc3Jh4ttTTmWNcfJ1xcBQ+iK
 iyKXqqR6M+lPzYhm1X/KBGc0t6KiC2Ql6f8i+3/c6sj+3h0/lsPdJEFyp
 7jpAxnBHqWT6abAAQ8oHowqGNRrciY6QVOftPOoS7+Rjbz2zLFrWBF+Wy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="362443603"
X-IronPort-AV: E=Sophos;i="6.03,185,1694761200"; d="scan'208";a="362443603"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 15:58:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="923423965"
X-IronPort-AV: E=Sophos;i="6.03,185,1694761200"; d="scan'208";a="923423965"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 28 Sep 2023 15:58:38 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qlzxs-00026Y-0x;
 Thu, 28 Sep 2023 22:58:36 +0000
Date: Fri, 29 Sep 2023 06:58:15 +0800
From: kernel test robot <lkp@intel.com>
To: Konstantin Aladyshev <aladyshev22@gmail.com>
Message-ID: <202309290613.qxRTI9f7-lkp@intel.com>
References: <20230928123009.2913-4-aladyshev22@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230928123009.2913-4-aladyshev22@gmail.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Konstantin, kernel test robot noticed the following build
 warnings: [auto build test WARNING on cminyard-ipmi/for-next] [also build
 test WARNING on linus/master v6.6-rc3 next-20230928] [If your patch is applied
 to the wrong git tree, kindly drop us a note. And when su [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qlzy6-0005ob-RI
Subject: Re: [Openipmi-developer] [PATCH 3/3] mctp: Add MCTP-over-KCS
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
[also build test WARNING on linus/master v6.6-rc3 next-20230928]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Konstantin-Aladyshev/ipmi-Move-KCS-headers-to-common-include-folder/20230928-203248
base:   https://github.com/cminyard/linux-ipmi for-next
patch link:    https://lore.kernel.org/r/20230928123009.2913-4-aladyshev22%40gmail.com
patch subject: [PATCH 3/3] mctp: Add MCTP-over-KCS transport binding
config: sparc-allyesconfig (https://download.01.org/0day-ci/archive/20230929/202309290613.qxRTI9f7-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230929/202309290613.qxRTI9f7-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309290613.qxRTI9f7-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from include/linux/device.h:15,
                    from include/linux/dma-mapping.h:8,
                    from include/linux/skbuff.h:28,
                    from include/linux/if_arp.h:22,
                    from drivers/net/mctp/mctp-kcs.c:16:
   drivers/net/mctp/mctp-kcs.c: In function 'mctp_kcs_validate_data':
>> drivers/net/mctp/mctp-kcs.c:121:25: warning: format '%x' expects argument of type 'unsigned int', but argument 5 has type 'long unsigned int' [-Wformat=]
     121 |                         "%s: KCS binding header error! len = 0x%02x, but should be 0x%02x",
         |                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:30: note: in definition of macro 'dev_printk_index_wrap'
     110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
         |                              ^~~
   include/linux/dev_printk.h:144:56: note: in expansion of macro 'dev_fmt'
     144 |         dev_printk_index_wrap(_dev_err, KERN_ERR, dev, dev_fmt(fmt), ##__VA_ARGS__)
         |                                                        ^~~~~~~
   drivers/net/mctp/mctp-kcs.c:120:17: note: in expansion of macro 'dev_err'
     120 |                 dev_err(mkcs->client.dev->dev,
         |                 ^~~~~~~
   drivers/net/mctp/mctp-kcs.c:121:89: note: format string is defined here
     121 |                         "%s: KCS binding header error! len = 0x%02x, but should be 0x%02x",
         |                                                                                      ~~~^
         |                                                                                         |
         |                                                                                         unsigned int
         |                                                                                      %02lx


vim +121 drivers/net/mctp/mctp-kcs.c

    95	
    96	static int mctp_kcs_validate_data(struct mctp_kcs *mkcs,
    97					  struct mctp_kcs_header *hdr, int len)
    98	{
    99		struct net_device *ndev = mkcs->netdev;
   100		struct mctp_kcs_trailer *tlr;
   101		u8 pec;
   102	
   103		if (hdr->netfn_lun != MCTP_KCS_NETFN_LUN) {
   104			dev_err(mkcs->client.dev->dev,
   105				"%s: KCS binding header error! netfn_lun = 0x%02x, but should be 0x%02x",
   106				__func__, hdr->netfn_lun, MCTP_KCS_NETFN_LUN);
   107			ndev->stats.rx_dropped++;
   108			return -EINVAL;
   109		}
   110		if (hdr->defining_body != DEFINING_BODY_DMTF_PRE_OS_WORKING_GROUP) {
   111			dev_err(mkcs->client.dev->dev,
   112				"%s: KCS binding header error! defining_body = 0x%02x, but should be 0x%02x",
   113				__func__, hdr->defining_body,
   114				DEFINING_BODY_DMTF_PRE_OS_WORKING_GROUP);
   115			ndev->stats.rx_dropped++;
   116			return -EINVAL;
   117		}
   118		if (hdr->len != (len - sizeof(struct mctp_kcs_header) -
   119				 sizeof(struct mctp_kcs_trailer))) {
   120			dev_err(mkcs->client.dev->dev,
 > 121				"%s: KCS binding header error! len = 0x%02x, but should be 0x%02x",
   122				__func__, hdr->len,
   123				(len - sizeof(struct mctp_kcs_header) -
   124				 sizeof(struct mctp_kcs_trailer)));
   125			ndev->stats.rx_length_errors++;
   126			return -EINVAL;
   127		}
   128	
   129		pec = generate_pec((u8 *)(hdr + 1), hdr->len);
   130		tlr = (struct mctp_kcs_trailer *)((u8 *)(hdr + 1) + hdr->len);
   131		if (pec != tlr->pec) {
   132			dev_err(mkcs->client.dev->dev,
   133				"%s: PEC error! Packet value=0x%02x, calculated value=0x%02x",
   134				__func__, tlr->pec, pec);
   135			ndev->stats.rx_crc_errors++;
   136			return -EINVAL;
   137		}
   138		return 0;
   139	}
   140	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
