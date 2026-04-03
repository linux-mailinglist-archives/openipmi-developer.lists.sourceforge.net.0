Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2E1yF1h+z2mvwgYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 10:46:16 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 935BE3924AB
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 10:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:From:Date:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FlgCBcXT/l6uZ9FefeJdl0UQXHsXM5r0KlT5OY1OaTE=; b=nP8K5byHK2cSDkG6bxDlRz9uhB
	rosgQoLXZl3pTf1rXxEXMAEWEIM8TWAMogFnP7yNMUdIJ8+QKEn8YYfNRQYkQOk5ODJ7j3xsVYQHa
	xIFyS6nV7cEadEDwkQ2pz7hgx860eKi7kPF3+VtMEsEZ2rhsYaEj92zqfMpAD4nHoCBY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8aAJ-0002Bw-0a;
	Fri, 03 Apr 2026 08:46:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1w8aAI-0002Bm-5G
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 08:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fozL+RcDwi5zpcoP76feyf4fEsUQt4SkiZUREjdbTsE=; b=Greaj/b+xE/Jacex6yuCegsKoi
 YeWoQZTm3E2RW2wR3SW7MQjcnKLUnOhf35AKqzjcgPtriML9MK4TzRWiQ+eMV005rnnS+HyjfW1TQ
 SxVkWfxpJ37TL3m07R4nX3tLTmDhifiX47pA+rHTrjTTmV4wNz//qThBlOWcalbb+kik=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fozL+RcDwi5zpcoP76feyf4fEsUQt4SkiZUREjdbTsE=; b=eWvr8iU+RUD3DJPjUOJjvX3g9q
 25l6gKMzS5TaTT/Kx8CNSmi/Tf7Nr05CZSa/yITtDwLHaHWGqTDc3qcJXeUdZOpkF2cWrp8VUDHiI
 ku8H6eAvhcJl2dlCjCRFGKo0dwkwXOMBDK7Br7hgx9ZBSz1rDRIA3lVn4b15w2rDAFCc=;
Received: from mgamail.intel.com ([192.198.163.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1w8aAI-0001bp-86 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 08:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775205966; x=1806741966;
 h=date:from:to:cc:subject:message-id;
 bh=JI9g7tZD4hAkRyswMW3/nAvmEOKyz3Ht8Onyzj06n/Q=;
 b=LCXNJG6P8dbBkwvVFu++XVHPTcAjASkHtfI3IMz29aQZ5hl+vbtNiOb7
 5eOraDx0D+a2nq4sf3VGzpmHgrv0TchWiaJ66PprsBqaz+TTTwqMdOa6M
 WuZB+PRglZTHtFp53hypS8D8Abe83ZUunSyJ8ZqG/rFlSt3e6sm+2ywns
 6q1eLXfsdcrq8D34cBVwbkcq0oYEtPMU3ARRDmv97AEOAkO+FF3FY0+n5
 yn6TTKVPdQshiZ7SQLk7heElODAlwgB9hVPY+t3HygXABBFL8FvNjPfHQ
 QOCFXhHkLfHI+GsgdUHbNRd9oB2KZEPXsKzJWTAagYqJU4z0gV/hYsthH Q==;
X-CSE-ConnectionGUID: gzigbtRFTPe35qKjwiH9Og==
X-CSE-MsgGUID: UQWb4dn8R1ycQDvklw76Yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="86889034"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="86889034"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 01:46:01 -0700
X-CSE-ConnectionGUID: BwZSFKhQRSivRP9PC/1xzQ==
X-CSE-MsgGUID: GVPLyAcoSxK8g63PtKo/uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="226369004"
Received: from lkp-server01.sh.intel.com (HELO 064ad336901d) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 03 Apr 2026 01:45:59 -0700
Received: from kbuild by 064ad336901d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w8aA8-0000000016E-2W6L;
 Fri, 03 Apr 2026 08:45:56 +0000
Date: Fri, 03 Apr 2026 16:45:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Jian Zhang via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Message-ID: <202604031030.j3LgqrdF-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: tree: https://github.com/cminyard/linux-ipmi for-next head:
 90478a78b71fffa35ecaca82d229036fcd9a4a58 commit:
 e1748349a14d39db4569316a01eb1ff2511f1765
 [2/6] ipmi: ssif_bmc: cancel response timer on rem [...] 
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1w8aAI-0001bp-86
Subject: [Openipmi-developer] [cminyard-ipmi:for-next 2/6]
 drivers/char/ipmi/ssif_bmc.c:846:2: error: implicit declaration of function
 'del_timer_sync'; did you mean 'add_timer_on'?
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
Cc: Corey Minyard <corey@minyard.net>, oe-kbuild-all@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [0.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,intel.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,intel.com:s=Intel];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,intel.com:email,intel.com:mid,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 935BE3924AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree:   https://github.com/cminyard/linux-ipmi for-next
head:   90478a78b71fffa35ecaca82d229036fcd9a4a58
commit: e1748349a14d39db4569316a01eb1ff2511f1765 [2/6] ipmi: ssif_bmc: cancel response timer on remove
config: parisc-randconfig-002-20260403 (https://download.01.org/0day-ci/archive/20260403/202604031030.j3LgqrdF-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260403/202604031030.j3LgqrdF-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202604031030.j3LgqrdF-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/char/ipmi/ssif_bmc.c: In function 'ssif_bmc_remove':
>> drivers/char/ipmi/ssif_bmc.c:846:2: error: implicit declaration of function 'del_timer_sync'; did you mean 'add_timer_on'? [-Werror=implicit-function-declaration]
     del_timer_sync(&ssif_bmc->response_timer);
     ^~~~~~~~~~~~~~
     add_timer_on
   cc1: some warnings being treated as errors


vim +846 drivers/char/ipmi/ssif_bmc.c

   841	
   842	static void ssif_bmc_remove(struct i2c_client *client)
   843	{
   844		struct ssif_bmc_ctx *ssif_bmc = i2c_get_clientdata(client);
   845	
 > 846		del_timer_sync(&ssif_bmc->response_timer);
   847		i2c_slave_unregister(client);
   848		misc_deregister(&ssif_bmc->miscdev);
   849	}
   850	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
