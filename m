Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uQRTB1czPmqLBQkAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jun 2026 10:07:51 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D56946CB379
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jun 2026 10:07:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=WDGsQiK2;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=jQhGE0li;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=NXJvGKDZ;
	dkim=fail ("body hash did not verify") header.d=intel.com header.s=Intel header.b=DN0N0GQ+;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:From:Date:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KReB1rxLyofoJu3RUPwtqRWrzkrjYQlfCOO4Bc2yCK8=; b=WDGsQiK2s1TxQEnZh1SGTVy+lB
	KAt/1DhodGw7NXq06o2TkM02GWLpSA6C0NXp2g2bM4FJndqAsrwfWfzDGheauhNHaLqr6Wp6QrYwK
	St1TlVJ66lUqj8KOGQbYHriAGQd9iViAFeyJsP8xP9BvWTGkpHgpOFAgtXx2KtcDzU8E=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wd1b7-0004qK-EU;
	Fri, 26 Jun 2026 08:07:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1wd1aY-0004jl-RS
 for openipmi-developer@lists.sourceforge.net;
 Fri, 26 Jun 2026 08:07:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vjv1LtbvrHpInQE2KwHegUEyKSFZAGh6kClZltmSZYU=; b=jQhGE0liiSBh82XskWZPdaeZRw
 EJ7EmH4cZXdCzFbfS7eJ0D+dGxiBacGu4ceR6Q/Rj+Kno0DlNMA1B/ex6VbTqI+HR17We5ITszpcg
 zZsjl+pHPb87eS8NWCyKLShyRQWz0Uhrp33YELhOf0BX0+hp7YLRV9PIX1jZ8qgnSd/E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vjv1LtbvrHpInQE2KwHegUEyKSFZAGh6kClZltmSZYU=; b=NXJvGKDZgxNrKghK3Lm/pZ5FqF
 iVH92LLqdciz95it+udcvU/dRYDjGdBKRtqB43Nn33hdeltjnSora+Qwt7Ax8+DaF0vObowtnxgqX
 UcIWq5j3JH3zpo9g1p0Zh9vwVWBRXeqwpxGAq8aV6qmTYm9RfrEx9owT1EkLYvVQJpk0=;
Received: from mgamail.intel.com ([198.175.65.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wd1aU-0001e3-47 for openipmi-developer@lists.sourceforge.net;
 Fri, 26 Jun 2026 08:07:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782461219; x=1813997219;
 h=date:from:to:cc:subject:message-id;
 bh=4j6n37cVOeTQEpctE0tqVFQuDJIfEJSd1YSdbZVVxdA=;
 b=DN0N0GQ+VtseYZoohj279D/Ob/SaC/kTwqSQcXMtNXfPsXDnGNoFndlf
 DwhqPfadH98omrMqlIOD2ywUx11D/zvpjzFc/L8Vu6kdeMZozFjEAvyHy
 FDhs5O1/fTaQn1KZ8PI4JOmC22DXXqljYTR8JkQplBMBqgFm//+AtvdA+
 2CBHusXFzCbXVK6NhtnX2umw5VPeEjzXGcob8tqMT2qfKNyAngzCZPsLv
 0OEHr4W4jcncUIPjJ8HohM+HMYecUuannqyUd6FGJ/VcihTudwk5M7UMs
 5FmEVf/tOl1eJFZd+wQpcT9AmXBtMiVLSMUmFeHWY40KgJBA9p8hu1Uq/ Q==;
X-CSE-ConnectionGUID: BDxnPp4pTpaD/X/VqUlMBA==
X-CSE-MsgGUID: il+xnMnDQWy9/wFs/aR/yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="93606109"
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="93606109"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 01:06:48 -0700
X-CSE-ConnectionGUID: 400PD0BBQ1CYz8JnU+eBjQ==
X-CSE-MsgGUID: nJ/ib+BGSwOymFutel+Jcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="251928211"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by orviesa009.jf.intel.com with ESMTP; 26 Jun 2026 01:06:46 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wd1aF-000000004ub-2F2d;
 Fri, 26 Jun 2026 08:06:43 +0000
Date: Fri, 26 Jun 2026 16:06:00 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <202606261645.OLSSQmr6-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: tree/branch:
 https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
 master branch HEAD: 30ffa8de54e5cc80d93fd211ca134d1764a7011f Add linux-next
 specific files for 20260625 Unverified Warning (likely false positive, kindly
 check if interested): 
 Content analysis details:   (-0.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1wd1aU-0001e3-47
Subject: [Openipmi-developer] [linux-next:master] BUILD SUCCESS WITH
 UNVERIFIED WARNING 30ffa8de54e5cc80d93fd211ca134d1764a7011f
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
Cc: Linux Memory Management List <linux-mm@kvack.org>,
 openipmi-developer@lists.sourceforge.net, Mark Brown <broonie@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:akpm@linux-foundation.org,m:linux-mm@kvack.org,m:openipmi-developer@lists.sourceforge.net,m:broonie@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[lkp@intel.com,openipmi-developer-bounces@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,intel.com:s=Intel];
	FROM_HAS_DN(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,intel.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D56946CB379

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
branch HEAD: 30ffa8de54e5cc80d93fd211ca134d1764a7011f  Add linux-next specific files for 20260625

Unverified Warning (likely false positive, kindly check if interested):

    https://lore.kernel.org/oe-kbuild/202606261001.a4rYzg2M-lkp@intel.com

    drivers/char/ipmi/ssif_bmc.c:158 ssif_bmc_read() error: calling 'spin_unlock_irqrestore()' with bogus flags
    drivers/char/ipmi/ssif_bmc.c:231 ssif_bmc_write() error: calling 'spin_unlock_irqrestore()' with bogus flags

Warning ids grouped by kconfigs:

recent_errors
`-- i386-randconfig-r073-20260624
    |-- drivers-char-ipmi-ssif_bmc.c-ssif_bmc_read()-error:calling-spin_unlock_irqrestore()-with-bogus-flags
    `-- drivers-char-ipmi-ssif_bmc.c-ssif_bmc_write()-error:calling-spin_unlock_irqrestore()-with-bogus-flags

elapsed time: 729m

configs tested: 328
configs skipped: 3

tested configs:
alpha                            alldefconfig    gcc-16.1.0
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    clang-23
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-16.1.0
arc                                 defconfig    gcc-16.1.0
arc                            randconfig-001    gcc-16.1.0
arc                   randconfig-001-20260626    gcc-11.5.0
arc                   randconfig-001-20260626    gcc-13.4.0
arc                   randconfig-001-20260626    gcc-16.1.0
arc                            randconfig-002    gcc-16.1.0
arc                   randconfig-002-20260626    gcc-13.4.0
arc                   randconfig-002-20260626    gcc-16.1.0
arc                   randconfig-002-20260626    gcc-9.5.0
arm                               allnoconfig    clang-17
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    clang-23
arm                              allyesconfig    gcc-16.1.0
arm                                 defconfig    clang-23
arm                                 defconfig    gcc-16.1.0
arm                            randconfig-001    gcc-16.1.0
arm                   randconfig-001-20260626    gcc-13.4.0
arm                   randconfig-001-20260626    gcc-16.1.0
arm                            randconfig-002    gcc-16.1.0
arm                   randconfig-002-20260626    clang-23
arm                   randconfig-002-20260626    gcc-13.4.0
arm                   randconfig-002-20260626    gcc-16.1.0
arm                            randconfig-003    gcc-16.1.0
arm                   randconfig-003-20260626    gcc-13.4.0
arm                   randconfig-003-20260626    gcc-16.1.0
arm                            randconfig-004    gcc-16.1.0
arm                   randconfig-004-20260626    clang-21
arm                   randconfig-004-20260626    gcc-13.4.0
arm                   randconfig-004-20260626    gcc-16.1.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                 randconfig-001-20260626    gcc-8.5.0
arm64                 randconfig-002-20260626    clang-17
arm64                 randconfig-002-20260626    gcc-8.5.0
arm64                 randconfig-003-20260626    gcc-15.2.0
arm64                 randconfig-003-20260626    gcc-8.5.0
arm64                 randconfig-004-20260626    gcc-13.4.0
arm64                 randconfig-004-20260626    gcc-8.5.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                  randconfig-001-20260626    gcc-16.1.0
csky                  randconfig-001-20260626    gcc-8.5.0
csky                  randconfig-002-20260626    gcc-16.1.0
csky                  randconfig-002-20260626    gcc-8.5.0
hexagon                          allmodconfig    clang-23
hexagon                          allmodconfig    gcc-16.1.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-16.1.0
hexagon                             defconfig    clang-23
hexagon                             defconfig    gcc-16.1.0
hexagon               randconfig-001-20260626    clang-23
hexagon               randconfig-001-20260626    gcc-11.5.0
hexagon               randconfig-002-20260626    clang-17
hexagon               randconfig-002-20260626    gcc-11.5.0
i386                             allmodconfig    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    clang-22
i386                             allyesconfig    gcc-14
i386                 buildonly-randconfig-001    gcc-14
i386        buildonly-randconfig-001-20260626    gcc-14
i386                 buildonly-randconfig-002    clang-22
i386                 buildonly-randconfig-002    gcc-14
i386        buildonly-randconfig-002-20260626    gcc-14
i386                 buildonly-randconfig-003    clang-22
i386                 buildonly-randconfig-003    gcc-14
i386        buildonly-randconfig-003-20260626    gcc-14
i386                 buildonly-randconfig-004    gcc-14
i386        buildonly-randconfig-004-20260626    gcc-12
i386        buildonly-randconfig-004-20260626    gcc-14
i386                 buildonly-randconfig-005    gcc-14
i386        buildonly-randconfig-005-20260626    gcc-14
i386                 buildonly-randconfig-006    gcc-14
i386        buildonly-randconfig-006-20260626    gcc-14
i386                                defconfig    clang-22
i386                                defconfig    gcc-16.1.0
i386                           randconfig-001    gcc-14
i386                  randconfig-001-20260626    clang-22
i386                  randconfig-001-20260626    gcc-14
i386                           randconfig-002    gcc-14
i386                  randconfig-002-20260626    gcc-14
i386                           randconfig-003    gcc-14
i386                  randconfig-003-20260626    clang-22
i386                  randconfig-003-20260626    gcc-14
i386                           randconfig-004    gcc-14
i386                  randconfig-004-20260626    clang-22
i386                  randconfig-004-20260626    gcc-14
i386                           randconfig-005    gcc-14
i386                  randconfig-005-20260626    gcc-14
i386                           randconfig-006    gcc-14
i386                  randconfig-006-20260626    gcc-14
i386                           randconfig-007    gcc-14
i386                  randconfig-007-20260626    gcc-14
i386                           randconfig-011    gcc-14
i386                  randconfig-011-20260626    gcc-14
i386                           randconfig-012    gcc-14
i386                  randconfig-012-20260626    clang-22
i386                  randconfig-012-20260626    gcc-14
i386                           randconfig-013    gcc-14
i386                  randconfig-013-20260626    clang-22
i386                  randconfig-013-20260626    gcc-14
i386                           randconfig-014    gcc-14
i386                  randconfig-014-20260626    gcc-14
i386                           randconfig-015    gcc-14
i386                  randconfig-015-20260626    gcc-14
i386                           randconfig-016    gcc-14
i386                  randconfig-016-20260626    clang-22
i386                  randconfig-016-20260626    gcc-14
i386                           randconfig-017    gcc-14
i386                  randconfig-017-20260626    clang-22
i386                  randconfig-017-20260626    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-20
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch             randconfig-001-20260626    gcc-11.5.0
loongarch             randconfig-001-20260626    gcc-16.1.0
loongarch             randconfig-002-20260626    clang-18
loongarch             randconfig-002-20260626    gcc-11.5.0
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    clang-23
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    clang-23
m68k                                defconfig    gcc-16.1.0
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    clang-23
microblaze                          defconfig    gcc-16.1.0
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
mips                     loongson2k_defconfig    gcc-16.1.0
nios2                            allmodconfig    clang-20
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-23
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260626    gcc-11.5.0
nios2                 randconfig-002-20260626    gcc-11.5.0
nios2                 randconfig-002-20260626    gcc-8.5.0
openrisc                         allmodconfig    clang-20
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-16.1.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    clang-17
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                         randconfig-001    gcc-8.5.0
parisc                randconfig-001-20260626    gcc-8.5.0
parisc                         randconfig-002    gcc-12.5.0
parisc                randconfig-002-20260626    gcc-12.5.0
parisc                randconfig-002-20260626    gcc-8.5.0
parisc64                            defconfig    clang-23
parisc64                            defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-16.1.0
powerpc                      ep88xc_defconfig    gcc-16.1.0
powerpc                   motionpro_defconfig    clang-23
powerpc                        randconfig-001    gcc-10.5.0
powerpc               randconfig-001-20260626    clang-23
powerpc               randconfig-001-20260626    gcc-8.5.0
powerpc                        randconfig-002    gcc-8.5.0
powerpc               randconfig-002-20260626    gcc-11.5.0
powerpc               randconfig-002-20260626    gcc-8.5.0
powerpc64                      randconfig-001    clang-17
powerpc64             randconfig-001-20260626    clang-17
powerpc64             randconfig-001-20260626    gcc-8.5.0
powerpc64                      randconfig-002    clang-23
powerpc64             randconfig-002-20260626    gcc-13.4.0
powerpc64             randconfig-002-20260626    gcc-8.5.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    clang-23
riscv                               defconfig    gcc-16.1.0
riscv             nommu_k210_sdcard_defconfig    gcc-16.1.0
riscv                          randconfig-001    clang-23
riscv                          randconfig-001    gcc-13.4.0
riscv                 randconfig-001-20260626    clang-23
riscv                 randconfig-001-20260626    gcc-11.5.0
riscv                          randconfig-002    clang-17
riscv                          randconfig-002    clang-23
riscv                 randconfig-002-20260626    clang-23
s390                             allmodconfig    clang-17
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    clang-18
s390                                defconfig    gcc-16.1.0
s390                           randconfig-001    clang-23
s390                           randconfig-001    gcc-15.2.0
s390                  randconfig-001-20260626    clang-23
s390                           randconfig-002    clang-18
s390                           randconfig-002    clang-23
s390                  randconfig-002-20260626    clang-23
s390                  randconfig-002-20260626    gcc-8.5.0
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    clang-17
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-16.1.0
sh                             randconfig-001    clang-23
sh                             randconfig-001    gcc-14.3.0
sh                    randconfig-001-20260626    clang-23
sh                    randconfig-001-20260626    gcc-9.5.0
sh                             randconfig-002    clang-23
sh                             randconfig-002    gcc-9.5.0
sh                    randconfig-002-20260626    clang-23
sh                    randconfig-002-20260626    gcc-16.1.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                 randconfig-001-20260626    gcc-12.5.0
sparc                 randconfig-002-20260626    gcc-12.5.0
sparc                 randconfig-002-20260626    gcc-8.5.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260626    clang-20
sparc64               randconfig-001-20260626    gcc-12.5.0
sparc64               randconfig-002-20260626    clang-20
sparc64               randconfig-002-20260626    gcc-12.5.0
um                               allmodconfig    clang-17
um                                allnoconfig    clang-17
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-16.1.0
um                                  defconfig    clang-23
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260626    clang-18
um                    randconfig-001-20260626    gcc-12.5.0
um                    randconfig-002-20260626    clang-23
um                    randconfig-002-20260626    gcc-12.5.0
um                           x86_64_defconfig    clang-23
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64               buildonly-randconfig-001    gcc-14
x86_64      buildonly-randconfig-001-20260626    gcc-14
x86_64               buildonly-randconfig-002    gcc-14
x86_64      buildonly-randconfig-002-20260626    gcc-14
x86_64               buildonly-randconfig-003    gcc-14
x86_64      buildonly-randconfig-003-20260626    gcc-14
x86_64               buildonly-randconfig-004    gcc-14
x86_64      buildonly-randconfig-004-20260626    gcc-14
x86_64               buildonly-randconfig-005    gcc-14
x86_64      buildonly-randconfig-005-20260626    gcc-14
x86_64               buildonly-randconfig-006    gcc-14
x86_64      buildonly-randconfig-006-20260626    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                randconfig-001-20260626    clang-22
x86_64                randconfig-002-20260626    clang-22
x86_64                randconfig-002-20260626    gcc-14
x86_64                randconfig-003-20260626    clang-22
x86_64                randconfig-004-20260626    clang-22
x86_64                randconfig-005-20260626    clang-22
x86_64                randconfig-005-20260626    gcc-13
x86_64                randconfig-006-20260626    clang-22
x86_64                         randconfig-011    gcc-14
x86_64                randconfig-011-20260626    gcc-14
x86_64                         randconfig-012    gcc-14
x86_64                randconfig-012-20260626    gcc-14
x86_64                         randconfig-013    clang-22
x86_64                randconfig-013-20260626    clang-22
x86_64                randconfig-013-20260626    gcc-14
x86_64                         randconfig-014    gcc-14
x86_64                randconfig-014-20260626    gcc-14
x86_64                         randconfig-015    gcc-14
x86_64                randconfig-015-20260626    gcc-14
x86_64                         randconfig-016    clang-22
x86_64                randconfig-016-20260626    gcc-14
x86_64                         randconfig-071    gcc-14
x86_64                randconfig-071-20260626    gcc-14
x86_64                         randconfig-072    gcc-14
x86_64                randconfig-072-20260626    clang-22
x86_64                randconfig-072-20260626    gcc-14
x86_64                         randconfig-073    clang-22
x86_64                         randconfig-073    gcc-14
x86_64                randconfig-073-20260626    gcc-14
x86_64                         randconfig-074    gcc-14
x86_64                randconfig-074-20260626    gcc-14
x86_64                         randconfig-075    gcc-13
x86_64                         randconfig-075    gcc-14
x86_64                randconfig-075-20260626    gcc-14
x86_64                         randconfig-076    clang-22
x86_64                         randconfig-076    gcc-14
x86_64                randconfig-076-20260626    gcc-14
x86_64                               rhel-9.4    clang-22
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-22
x86_64                    rhel-9.4-kselftests    clang-22
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-16.1.0
xtensa                           allyesconfig    clang-20
xtensa                           allyesconfig    gcc-16.1.0
xtensa                randconfig-001-20260626    gcc-12.5.0
xtensa                randconfig-002-20260626    gcc-10.5.0
xtensa                randconfig-002-20260626    gcc-12.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
