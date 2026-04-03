Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAeMHJR+z2mvwgYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 10:47:16 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE8F3924D6
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 10:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:To:From:Date:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bI9TetKeF0aZ7D2HxKZK+ArdYovTU+GpTYKJFzP1RHs=; b=fft/jkqaSbqnYbqeescHHuutYB
	z/Oxex4S1QGCKJW9TkN/602BkFM/5qkclsaUOfTHvGkHUPZazIm+D4ax4S76cWoG7OaEk1hvE0oYq
	1F5gD5SLfde5wApalvj4/KNB0Vm9eSo/IgCWTjZzdFkHZq9GabFWv7bc6HnLAhjpAGZs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8aBH-0002J8-Qw;
	Fri, 03 Apr 2026 08:47:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1w8aBG-0002Ix-GW
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 08:47:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yxFLXpIUyn076YHUgBkPRxwOfZBSHE8bULDCmiJwqSs=; b=lA+/r+Nw/LFjcrR9lSiBxPaS0b
 hHMoYgHv3wjYztCkbbs7D0//KI1KpuHsZiWri4M8CwF1xQtpMjv3gTUWjLvdOb3YnG11fMwwM0XwR
 rnGbRvnQ2dErVmYCQPTdHEGQ3xH5HzJ9pBfJvDLF4HvkQWdz3SLShFMOqv3W/CFZao2k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yxFLXpIUyn076YHUgBkPRxwOfZBSHE8bULDCmiJwqSs=; b=Nsj6N9H1nviXuajTLzdybCrLxr
 YKf4xcwSJccVca4l32CxV6nXkYtOcAyRgSyONY2o4kIBd0DXmrl+TuNW8GGrihJYATTOHk1nfbhhq
 m8WKbMygEcMEwrpewzfzkV+61hw5wVu9fi7b6Df7Pw+xxqcFY5JxHy5lCWWstAgvN5eA=;
Received: from mgamail.intel.com ([192.198.163.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1w8aBG-0001jz-Fm for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 08:47:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775206027; x=1806742027;
 h=date:from:to:cc:subject:message-id;
 bh=4V267bHb56I2Aiwrkmx+UvFmAbEFIq1m8/RG29G+bjk=;
 b=VQi+09jGC9N8z7Yz3lEkCfZEKV7aRSXr47M7hReHX3OX8ipa29Owfh16
 EeNEjR/G0d60jMoO5qAPt4J1bND4r3UhjW6Sp8tY6FPEwzqF8lUZBR4YH
 styULbbz3YXZUvX2ckLNQQCmTNJY2fl7wh21so+nJ5aAF18NIw4fI0UXc
 W8MvPI7wV62fcHUS3LSPLmRM4I/V5fYj8JGgqNUyURG0CxIjGrGuiw1ox
 Bz5NkbIA0O1XCi02cd3UBCVUFvHH/sR8vDyu0TeHj5r2SOGrCdEJzPhbi
 725JB4+Q6QSILNrAjd4XhcVmBxZOqV856iyHDK/cJk83wRYpGHYEkcm32 g==;
X-CSE-ConnectionGUID: zs5TLuLDRG+EwjYtq1ePUQ==
X-CSE-MsgGUID: +lRVfG6tQK2lqpp2zaVn0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="86889136"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="86889136"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 01:47:01 -0700
X-CSE-ConnectionGUID: M/ErpCFCS4SuHWTMl3nyDw==
X-CSE-MsgGUID: r56BHiM9QCKCbFpSfboNXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="231605138"
Received: from lkp-server01.sh.intel.com (HELO 064ad336901d) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 03 Apr 2026 01:47:00 -0700
Received: from kbuild by 064ad336901d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w8aB6-0000000016l-3N1J;
 Fri, 03 Apr 2026 08:46:56 +0000
Date: Fri, 03 Apr 2026 16:46:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Jian Zhang via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Message-ID: <202604031228.UoNOKsz1-lkp@intel.com>
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
 90478a78b71fffa35ecaca82d229036fcd9a4a58
 [6/6] ipmi: ssif_bmc: add unit test for state mach [...] 
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
X-Headers-End: 1w8aBG-0001jz-Fm
Subject: [Openipmi-developer] [cminyard-ipmi:for-next 6/6]
 drivers/char/ipmi/ssif_bmc.c:1064:43: error: 'struct ssif_bmc_ctx' has no
 member named 'response_in_send'; did you mean 'response_timer'?
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
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 9BE8F3924D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

tree:   https://github.com/cminyard/linux-ipmi for-next
head:   90478a78b71fffa35ecaca82d229036fcd9a4a58
commit: 90478a78b71fffa35ecaca82d229036fcd9a4a58 [6/6] ipmi: ssif_bmc: add unit test for state machine
config: x86_64-randconfig-071-20260403 (https://download.01.org/0day-ci/archive/20260403/202604031228.UoNOKsz1-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260403/202604031228.UoNOKsz1-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202604031228.UoNOKsz1-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/char/ipmi/ssif_bmc.c: In function 'ssif_bmc_remove':
   drivers/char/ipmi/ssif_bmc.c:865:9: error: implicit declaration of function 'del_timer_sync' [-Wimplicit-function-declaration]
     865 |         del_timer_sync(&ssif_bmc->response_timer);
         |         ^~~~~~~~~~~~~~
   In file included from include/linux/cleanup.h:5,
                    from include/linux/acpi.h:11,
                    from include/linux/i2c.h:13,
                    from drivers/char/ipmi/ssif_bmc.c:9:
   drivers/char/ipmi/ssif_bmc.c: In function 'ssif_bmc_test_singlepart_read_response_completion':
>> drivers/char/ipmi/ssif_bmc.c:1064:43: error: 'struct ssif_bmc_ctx' has no member named 'response_in_send'; did you mean 'response_timer'?
    1064 |         KUNIT_EXPECT_TRUE(test, ssif_bmc->response_in_send);
         |                                           ^~~~~~~~~~~~~~~~
   include/linux/compiler.h:32:55: note: in definition of macro '__branch_check__'
      32 |                         ______r = __builtin_expect(!!(x), expect);      \
         |                                                       ^
   include/kunit/test.h:786:13: note: in expansion of macro 'likely'
     786 |         if (likely(!!(condition_) == !!expected_true_))                        \
         |             ^~~~~~
   include/kunit/test.h:800:9: note: in expansion of macro 'KUNIT_UNARY_ASSERTION'
     800 |         KUNIT_UNARY_ASSERTION(test,                                            \
         |         ^~~~~~~~~~~~~~~~~~~~~
   include/kunit/test.h:996:9: note: in expansion of macro 'KUNIT_TRUE_MSG_ASSERTION'
     996 |         KUNIT_TRUE_MSG_ASSERTION(test,                                         \
         |         ^~~~~~~~~~~~~~~~~~~~~~~~
   include/kunit/test.h:993:9: note: in expansion of macro 'KUNIT_EXPECT_TRUE_MSG'
     993 |         KUNIT_EXPECT_TRUE_MSG(test, condition, NULL)
         |         ^~~~~~~~~~~~~~~~~~~~~
   drivers/char/ipmi/ssif_bmc.c:1064:9: note: in expansion of macro 'KUNIT_EXPECT_TRUE'
    1064 |         KUNIT_EXPECT_TRUE(test, ssif_bmc->response_in_send);
         |         ^~~~~~~~~~~~~~~~~
>> drivers/char/ipmi/ssif_bmc.c:1064:43: error: 'struct ssif_bmc_ctx' has no member named 'response_in_send'; did you mean 'response_timer'?
    1064 |         KUNIT_EXPECT_TRUE(test, ssif_bmc->response_in_send);
         |                                           ^~~~~~~~~~~~~~~~
   include/linux/compiler.h:34:54: note: in definition of macro '__branch_check__'
      34 |                                              expect, is_constant);      \
         |                                                      ^~~~~~~~~~~
   include/kunit/test.h:786:13: note: in expansion of macro 'likely'
     786 |         if (likely(!!(condition_) == !!expected_true_))                        \
         |             ^~~~~~
   include/kunit/test.h:800:9: note: in expansion of macro 'KUNIT_UNARY_ASSERTION'
     800 |         KUNIT_UNARY_ASSERTION(test,                                            \
         |         ^~~~~~~~~~~~~~~~~~~~~
   include/kunit/test.h:996:9: note: in expansion of macro 'KUNIT_TRUE_MSG_ASSERTION'
     996 |         KUNIT_TRUE_MSG_ASSERTION(test,                                         \
         |         ^~~~~~~~~~~~~~~~~~~~~~~~
   include/kunit/test.h:993:9: note: in expansion of macro 'KUNIT_EXPECT_TRUE_MSG'
     993 |         KUNIT_EXPECT_TRUE_MSG(test, condition, NULL)
         |         ^~~~~~~~~~~~~~~~~~~~~
   drivers/char/ipmi/ssif_bmc.c:1064:9: note: in expansion of macro 'KUNIT_EXPECT_TRUE'
    1064 |         KUNIT_EXPECT_TRUE(test, ssif_bmc->response_in_send);
         |         ^~~~~~~~~~~~~~~~~
   drivers/char/ipmi/ssif_bmc.c:1088:44: error: 'struct ssif_bmc_ctx' has no member named 'response_in_send'; did you mean 'response_timer'?
    1088 |         KUNIT_EXPECT_FALSE(test, ssif_bmc->response_in_send);
         |                                            ^~~~~~~~~~~~~~~~
   include/linux/compiler.h:32:55: note: in definition of macro '__branch_check__'
      32 |                         ______r = __builtin_expect(!!(x), expect);      \
         |                                                       ^
   include/kunit/test.h:786:13: note: in expansion of macro 'likely'
     786 |         if (likely(!!(condition_) == !!expected_true_))                        \
         |             ^~~~~~
   include/kunit/test.h:808:9: note: in expansion of macro 'KUNIT_UNARY_ASSERTION'
     808 |         KUNIT_UNARY_ASSERTION(test,                                            \
         |         ^~~~~~~~~~~~~~~~~~~~~
   include/kunit/test.h:1015:9: note: in expansion of macro 'KUNIT_FALSE_MSG_ASSERTION'
    1015 |         KUNIT_FALSE_MSG_ASSERTION(test,                                        \
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/kunit/test.h:1012:9: note: in expansion of macro 'KUNIT_EXPECT_FALSE_MSG'
    1012 |         KUNIT_EXPECT_FALSE_MSG(test, condition, NULL)
         |         ^~~~~~~~~~~~~~~~~~~~~~
   drivers/char/ipmi/ssif_bmc.c:1088:9: note: in expansion of macro 'KUNIT_EXPECT_FALSE'
    1088 |         KUNIT_EXPECT_FALSE(test, ssif_bmc->response_in_send);
         |         ^~~~~~~~~~~~~~~~~~
   drivers/char/ipmi/ssif_bmc.c:1088:44: error: 'struct ssif_bmc_ctx' has no member named 'response_in_send'; did you mean 'response_timer'?
    1088 |         KUNIT_EXPECT_FALSE(test, ssif_bmc->response_in_send);
         |                                            ^~~~~~~~~~~~~~~~
   include/linux/compiler.h:34:54: note: in definition of macro '__branch_check__'
      34 |                                              expect, is_constant);      \
         |                                                      ^~~~~~~~~~~
   include/kunit/test.h:786:13: note: in expansion of macro 'likely'
     786 |         if (likely(!!(condition_) == !!expected_true_))                        \
         |             ^~~~~~
   include/kunit/test.h:808:9: note: in expansion of macro 'KUNIT_UNARY_ASSERTION'
     808 |         KUNIT_UNARY_ASSERTION(test,                                            \
         |         ^~~~~~~~~~~~~~~~~~~~~
   include/kunit/test.h:1015:9: note: in expansion of macro 'KUNIT_FALSE_MSG_ASSERTION'
    1015 |         KUNIT_FALSE_MSG_ASSERTION(test,                                        \
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/kunit/test.h:1012:9: note: in expansion of macro 'KUNIT_EXPECT_FALSE_MSG'
    1012 |         KUNIT_EXPECT_FALSE_MSG(test, condition, NULL)
         |         ^~~~~~~~~~~~~~~~~~~~~~
   drivers/char/ipmi/ssif_bmc.c:1088:9: note: in expansion of macro 'KUNIT_EXPECT_FALSE'
    1088 |         KUNIT_EXPECT_FALSE(test, ssif_bmc->response_in_send);
         |         ^~~~~~~~~~~~~~~~~~
   drivers/char/ipmi/ssif_bmc.c: In function 'ssif_bmc_test_write_interrupts_response_send':
   drivers/char/ipmi/ssif_bmc.c:1191:43: error: 'struct ssif_bmc_ctx' has no member named 'response_in_send'; did you mean 'response_timer'?
    1191 |         KUNIT_EXPECT_TRUE(test, ssif_bmc->response_in_send);
         |                                           ^~~~~~~~~~~~~~~~
   include/linux/compiler.h:32:55: note: in definition of macro '__branch_check__'
      32 |                         ______r = __builtin_expect(!!(x), expect);      \
         |                                                       ^
   include/kunit/test.h:786:13: note: in expansion of macro 'likely'
     786 |         if (likely(!!(condition_) == !!expected_true_))                        \
         |             ^~~~~~
   include/kunit/test.h:800:9: note: in expansion of macro 'KUNIT_UNARY_ASSERTION'
     800 |         KUNIT_UNARY_ASSERTION(test,                                            \
         |         ^~~~~~~~~~~~~~~~~~~~~
   include/kunit/test.h:996:9: note: in expansion of macro 'KUNIT_TRUE_MSG_ASSERTION'
     996 |         KUNIT_TRUE_MSG_ASSERTION(test,                                         \
         |         ^~~~~~~~~~~~~~~~~~~~~~~~
   include/kunit/test.h:993:9: note: in expansion of macro 'KUNIT_EXPECT_TRUE_MSG'
     993 |         KUNIT_EXPECT_TRUE_MSG(test, condition, NULL)
         |         ^~~~~~~~~~~~~~~~~~~~~
   drivers/char/ipmi/ssif_bmc.c:1191:9: note: in expansion of macro 'KUNIT_EXPECT_TRUE'
    1191 |         KUNIT_EXPECT_TRUE(test, ssif_bmc->response_in_send);
         |         ^~~~~~~~~~~~~~~~~
   drivers/char/ipmi/ssif_bmc.c:1191:43: error: 'struct ssif_bmc_ctx' has no member named 'response_in_send'; did you mean 'response_timer'?
    1191 |         KUNIT_EXPECT_TRUE(test, ssif_bmc->response_in_send);
         |                                           ^~~~~~~~~~~~~~~~
   include/linux/compiler.h:34:54: note: in definition of macro '__branch_check__'
      34 |                                              expect, is_constant);      \
         |                                                      ^~~~~~~~~~~
   include/kunit/test.h:786:13: note: in expansion of macro 'likely'
     786 |         if (likely(!!(condition_) == !!expected_true_))                        \
         |             ^~~~~~
   include/kunit/test.h:800:9: note: in expansion of macro 'KUNIT_UNARY_ASSERTION'
     800 |         KUNIT_UNARY_ASSERTION(test,                                            \
         |         ^~~~~~~~~~~~~~~~~~~~~
   include/kunit/test.h:996:9: note: in expansion of macro 'KUNIT_TRUE_MSG_ASSERTION'
     996 |         KUNIT_TRUE_MSG_ASSERTION(test,                                         \
         |         ^~~~~~~~~~~~~~~~~~~~~~~~
   include/kunit/test.h:993:9: note: in expansion of macro 'KUNIT_EXPECT_TRUE_MSG'


vim +1064 drivers/char/ipmi/ssif_bmc.c

  1042	
  1043	static void ssif_bmc_test_singlepart_read_response_completion(struct kunit *test)
  1044	{
  1045		struct ssif_bmc_test_ctx *test_ctx = test->priv;
  1046		struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
  1047		u8 value;
  1048	
  1049		ssif_bmc->state = SSIF_SMBUS_CMD;
  1050		ssif_bmc->part_buf.smbus_cmd = SSIF_IPMI_SINGLEPART_READ;
  1051		ssif_bmc->response.len = 2;
  1052		ssif_bmc->response.payload[0] = 0x11;
  1053		ssif_bmc->response.payload[1] = 0x22;
  1054		ssif_bmc->response_in_progress = true;
  1055		ssif_bmc->is_singlepart_read = true;
  1056		ssif_bmc->pec_support = true;
  1057	
  1058		value = 0;
  1059		KUNIT_ASSERT_EQ(test,
  1060				ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_REQUESTED,
  1061							    &value), 0);
  1062		KUNIT_EXPECT_EQ(test, value, 2);
  1063		KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_RES_SENDING);
> 1064		KUNIT_EXPECT_TRUE(test, ssif_bmc->response_in_send);
  1065	
  1066		value = 0;
  1067		KUNIT_EXPECT_EQ(test,
  1068				ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_PROCESSED,
  1069							    &value), 0);
  1070		KUNIT_EXPECT_EQ(test, value, 0x11);
  1071	
  1072		value = 0;
  1073		KUNIT_EXPECT_EQ(test,
  1074				ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_PROCESSED,
  1075							    &value), 0);
  1076		KUNIT_EXPECT_EQ(test, value, 0x22);
  1077	
  1078		value = 0;
  1079		KUNIT_EXPECT_EQ(test,
  1080				ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_PROCESSED,
  1081							    &value), 0);
  1082		KUNIT_EXPECT_EQ(test, value, ssif_bmc->part_buf.pec);
  1083	
  1084		KUNIT_EXPECT_EQ(test,
  1085				ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), 0);
  1086		KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_READY);
  1087		KUNIT_EXPECT_FALSE(test, ssif_bmc->response_in_progress);
  1088		KUNIT_EXPECT_FALSE(test, ssif_bmc->response_in_send);
  1089		KUNIT_EXPECT_EQ(test, ssif_bmc->response.len, 0);
  1090	}
  1091	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
