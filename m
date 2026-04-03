Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOvQGNR+z2mvwgYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 10:48:20 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CF63924EF
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 10:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:From:Date:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KwIMtGum0rWpUYuW+ZH5D++r/4CMHDZTR5eAse05KLQ=; b=lxQWNb5BOBzM99RZylByxE+fiR
	iDfBt8AwzHI3HsTvUrh4bboJY7A0pH2rBq3BmNhZwwx2heR2lugz3JzEizEluRcQI1npMIsPu6Xuj
	L+akvkm14QMQ0IuuH6Pp97Og+pLu+6FnauztaX2Yg72ub6qUIyAe4yi779wqogCzQyqQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8aCL-00082c-6W;
	Fri, 03 Apr 2026 08:48:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1w8aCJ-00082T-IM
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 08:48:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DvRACBC0V5xZXL5z3vQICkVk+a/4R337ShR8PvyiwU8=; b=gUJygG/X0jHeCvN+t930yAHQMf
 ROHAxe1+uaNSqpiM1WAl/vPjuy8WQmun7ExCDSUa9xwOTMaKJqgXFD0OD14ANmoK1lzeHjPoVb7WP
 eD0D+7zL+/kNAPFVmKA3ddTms0jId82Q8Aj8+tWtaA8zcKT5OnUpOtL5N55lkUxXBir8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DvRACBC0V5xZXL5z3vQICkVk+a/4R337ShR8PvyiwU8=; b=SSuzWsr9H1OkpdLp9VlGqws8+Q
 ngbtUk2e4L+KFyQQpnD0iOq3/EdydjvONMcklqan9SxIawgwObdfLP9sY9Jctr74FIx//MR3gilZr
 fJ6ByZLtyAcvJ8q9ta9T6va0akPsJNZ5XuVTW7rT2Y1Rwh0vcsbDi9XXC6UJTJZil/OA=;
Received: from mgamail.intel.com ([192.198.163.10])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1w8aCJ-0001nA-0J for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 08:48:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775206091; x=1806742091;
 h=date:from:to:cc:subject:message-id;
 bh=FypCi4NEvNX4+W8mVcLLxvcNjuVzPf7nqVDqlQk2Qh0=;
 b=d1kEadO3ptOItupzpxauLq6KsPNgxLLK5c9B0ZTiobgQpItjAvfORUh0
 SZmddQVN60Auf/TMGM3XwRlj2yzL30AYgVPhYPenV141GhE0yL6QBq12R
 kOmlBc3h+IQ7cN1hzZUfeZUrB0XQMiL36HJuGEBKeSsG+CtvXGB1s9p/P
 5snnKojzzWj1y4pQ/B415JFi3wXU9VNEF2pbn2nivT7Ci5yac/eDD2oig
 nDUF7MLE3o08Lg4Zgiv5W9THXfslbXUpPvsR5yhJiNOot6pFlziTq06+o
 NdNhC9kN4KGYTLKHSgcCJqU9v9ghywbSOA+nt83mfbtXh4jmFRkPDNjIq Q==;
X-CSE-ConnectionGUID: OyHjdfxLSoO0Q1cGSEt6Ng==
X-CSE-MsgGUID: N2ohKHMnSWGbzU5ufr2T0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="87658606"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="87658606"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 01:48:01 -0700
X-CSE-ConnectionGUID: pkQFkq0MT+WnQ46Rz5e0ww==
X-CSE-MsgGUID: Bt4z7IuIR0azi4Xb61G3Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="232014703"
Received: from lkp-server01.sh.intel.com (HELO 064ad336901d) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 03 Apr 2026 01:47:59 -0700
Received: from kbuild by 064ad336901d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w8aC5-0000000017V-0kvy;
 Fri, 03 Apr 2026 08:47:57 +0000
Date: Fri, 03 Apr 2026 16:47:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Jian Zhang via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Message-ID: <202604031535.K2NUrFkf-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1w8aCJ-0001nA-0J
Subject: [Openipmi-developer] [cminyard-ipmi:for-next 2/6]
 drivers/char/ipmi/ssif_bmc.c:846:2: error: call to undeclared function
 'del_timer_sync';
 ISO C99 and later do not support implicit function declarations
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
X-Spamd-Result: default: False [1.50 / 15.00];
	LONG_SUBJ(1.52)[202];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
X-Rspamd-Queue-Id: A9CF63924EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree:   https://github.com/cminyard/linux-ipmi for-next
head:   90478a78b71fffa35ecaca82d229036fcd9a4a58
commit: e1748349a14d39db4569316a01eb1ff2511f1765 [2/6] ipmi: ssif_bmc: cancel response timer on remove
config: i386-randconfig-141-20260403 (https://download.01.org/0day-ci/archive/20260403/202604031535.K2NUrFkf-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
smatch: v0.5.0-9004-gb810ac53
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260403/202604031535.K2NUrFkf-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202604031535.K2NUrFkf-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/char/ipmi/ssif_bmc.c:846:2: error: call to undeclared function 'del_timer_sync'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     846 |         del_timer_sync(&ssif_bmc->response_timer);
         |         ^
   1 error generated.


vim +/del_timer_sync +846 drivers/char/ipmi/ssif_bmc.c

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
