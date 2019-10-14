Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C803D5927
	for <lists+openipmi-developer@lfdr.de>; Mon, 14 Oct 2019 02:58:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iJogQ-00010z-7W; Mon, 14 Oct 2019 00:57:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lkp@intel.com>) id 1iJogP-00010t-90
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Oct 2019 00:57:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fWEgdHY+/E9A4LfZWqKWP4d21JGrRK4HWVQmT42uXdg=; b=NIiYulK7Yz90o1zEOxMPqFUqyj
 zK2LOfg7t+hI3XoKWya9dses1Mm81GqI/OQrqNAaKVYZICD/DMUVMcZ/Dil2gw1tBytjnlnVvBlHz
 nCDBpTgmmI56Reznjv2/zH5jAuEqyrbcrwpBS2Ea8MJ4KYXsha/ok6cl90T4OTMJoG/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fWEgdHY+/E9A4LfZWqKWP4d21JGrRK4HWVQmT42uXdg=; b=WviTzfuOsYUw7ldgmJl8Nm60eS
 AaK1N54v2UTlTNVKwy0DrFY9j6ss/g1UD8Fi6pRJsmUMTLlUp4ToP2Fbp7oYkDQ0BL2ADLpdbaNqy
 YF/0MrktjrM3EJ+W4guyxJwLiNs0A2UnNfPFftsMtOmLptr+7di242auRWCI+NZBZiPQ=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iJogL-00HHTD-LL
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Oct 2019 00:57:57 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Oct 2019 17:57:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,294,1566889200"; 
 d="gz'50?scan'50,208,50";a="185342553"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 13 Oct 2019 17:57:45 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iJogC-0003wH-LY; Mon, 14 Oct 2019 08:57:44 +0800
Date: Mon, 14 Oct 2019 08:55:12 +0800
From: kbuild test robot <lkp@intel.com>
To: Joe Perches <joe@perches.com>
Message-ID: <201910140848.9TtlmRBv%lkp@intel.com>
References: <7831759661d9f3d47bd304b2e98e65e5d6c5d167.camel@perches.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="twpcu5x4akxomolk"
Content-Disposition: inline
In-Reply-To: <7831759661d9f3d47bd304b2e98e65e5d6c5d167.camel@perches.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iJogL-00HHTD-LL
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Convert ipmi_debug_msg to
 pr_debug and use %*ph
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
Cc: openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Corey Minyard <minyard@acm.org>
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--twpcu5x4akxomolk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Joe,

I love your patch! Perhaps something to improve:

[auto build test WARNING on char-misc/char-misc-testing]
[cannot apply to v5.4-rc2 next-20191011]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Joe-Perches/ipmi-Convert-ipmi_debug_msg-to-pr_debug-and-use-ph/20191014-051352
config: x86_64-kexec (attached as .config)
compiler: gcc-7 (Debian 7.4.0-13) 7.4.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/kernel.h:15:0,
                    from include/linux/list.h:9,
                    from include/linux/module.h:9,
                    from drivers/char/ipmi/ipmi_msghandler.c:17:
   drivers/char/ipmi/ipmi_msghandler.c: In function 'i_ipmi_request':
>> include/linux/kern_levels.h:5:18: warning: field width specifier '*' expects argument of type 'int', but argument 4 has type 'unsigned char *' [-Wformat=]
    #define KERN_SOH "\001"  /* ASCII Start Of Header */
                     ^
   include/linux/printk.h:137:10: note: in definition of macro 'no_printk'
      printk(fmt, ##__VA_ARGS__);  \
             ^~~
   include/linux/kern_levels.h:15:20: note: in expansion of macro 'KERN_SOH'
    #define KERN_DEBUG KERN_SOH "7" /* debug-level messages */
                       ^~~~~~~~
   include/linux/printk.h:342:12: note: in expansion of macro 'KERN_DEBUG'
     no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
               ^~~~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:2251:3: note: in expansion of macro 'pr_debug'
      pr_debug("%s: %*ph\n",
      ^~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:2251:18: note: format string is defined here
      pr_debug("%s: %*ph\n",
                    ~^~
   In file included from include/linux/kernel.h:15:0,
                    from include/linux/list.h:9,
                    from include/linux/module.h:9,
                    from drivers/char/ipmi/ipmi_msghandler.c:17:
>> include/linux/kern_levels.h:5:18: warning: format '%p' expects argument of type 'void *', but argument 5 has type 'int' [-Wformat=]
    #define KERN_SOH "\001"  /* ASCII Start Of Header */
                     ^
   include/linux/printk.h:137:10: note: in definition of macro 'no_printk'
      printk(fmt, ##__VA_ARGS__);  \
             ^~~
   include/linux/kern_levels.h:15:20: note: in expansion of macro 'KERN_SOH'
    #define KERN_DEBUG KERN_SOH "7" /* debug-level messages */
                       ^~~~~~~~
   include/linux/printk.h:342:12: note: in expansion of macro 'KERN_DEBUG'
     no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
               ^~~~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:2251:3: note: in expansion of macro 'pr_debug'
      pr_debug("%s: %*ph\n",
      ^~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:2251:19: note: format string is defined here
      pr_debug("%s: %*ph\n",
                    ~~^
                    %*d
   In file included from include/linux/kernel.h:15:0,
                    from include/linux/list.h:9,
                    from include/linux/module.h:9,
                    from drivers/char/ipmi/ipmi_msghandler.c:17:
   drivers/char/ipmi/ipmi_msghandler.c: In function 'handle_ipmb_get_msg_cmd':
>> include/linux/kern_levels.h:5:18: warning: field width specifier '*' expects argument of type 'int', but argument 4 has type 'unsigned char *' [-Wformat=]
    #define KERN_SOH "\001"  /* ASCII Start Of Header */
                     ^
   include/linux/printk.h:137:10: note: in definition of macro 'no_printk'
      printk(fmt, ##__VA_ARGS__);  \
             ^~~
   include/linux/kern_levels.h:15:20: note: in expansion of macro 'KERN_SOH'
    #define KERN_DEBUG KERN_SOH "7" /* debug-level messages */
                       ^~~~~~~~
   include/linux/printk.h:342:12: note: in expansion of macro 'KERN_DEBUG'
     no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
               ^~~~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:3715:3: note: in expansion of macro 'pr_debug'
      pr_debug("%s: %*ph\n",
      ^~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:3715:18: note: format string is defined here
      pr_debug("%s: %*ph\n",
                    ~^~
   In file included from include/linux/kernel.h:15:0,
                    from include/linux/list.h:9,
                    from include/linux/module.h:9,
                    from drivers/char/ipmi/ipmi_msghandler.c:17:
>> include/linux/kern_levels.h:5:18: warning: format '%p' expects argument of type 'void *', but argument 5 has type 'int' [-Wformat=]
    #define KERN_SOH "\001"  /* ASCII Start Of Header */
                     ^
   include/linux/printk.h:137:10: note: in definition of macro 'no_printk'
      printk(fmt, ##__VA_ARGS__);  \
             ^~~
   include/linux/kern_levels.h:15:20: note: in expansion of macro 'KERN_SOH'
    #define KERN_DEBUG KERN_SOH "7" /* debug-level messages */
                       ^~~~~~~~
   include/linux/printk.h:342:12: note: in expansion of macro 'KERN_DEBUG'
     no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
               ^~~~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:3715:3: note: in expansion of macro 'pr_debug'
      pr_debug("%s: %*ph\n",
      ^~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:3715:19: note: format string is defined here
      pr_debug("%s: %*ph\n",
                    ~~^
                    %*d
   In file included from include/linux/kernel.h:15:0,
                    from include/linux/list.h:9,
                    from include/linux/module.h:9,
                    from drivers/char/ipmi/ipmi_msghandler.c:17:
   drivers/char/ipmi/ipmi_msghandler.c: In function 'handle_one_recv_msg':
>> include/linux/kern_levels.h:5:18: warning: field width specifier '*' expects argument of type 'int', but argument 4 has type 'unsigned char *' [-Wformat=]
    #define KERN_SOH "\001"  /* ASCII Start Of Header */
                     ^
   include/linux/printk.h:137:10: note: in definition of macro 'no_printk'
      printk(fmt, ##__VA_ARGS__);  \
             ^~~
   include/linux/kern_levels.h:15:20: note: in expansion of macro 'KERN_SOH'
    #define KERN_DEBUG KERN_SOH "7" /* debug-level messages */
                       ^~~~~~~~
   include/linux/printk.h:342:12: note: in expansion of macro 'KERN_DEBUG'
     no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
               ^~~~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:4203:2: note: in expansion of macro 'pr_debug'
     pr_debug("%s: %*ph\n", "Recv", msg->rsp, msg->rsp_size);
     ^~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:4203:17: note: format string is defined here
     pr_debug("%s: %*ph\n", "Recv", msg->rsp, msg->rsp_size);
                   ~^~
   In file included from include/linux/kernel.h:15:0,
                    from include/linux/list.h:9,
                    from include/linux/module.h:9,
                    from drivers/char/ipmi/ipmi_msghandler.c:17:
>> include/linux/kern_levels.h:5:18: warning: format '%p' expects argument of type 'void *', but argument 5 has type 'int' [-Wformat=]
    #define KERN_SOH "\001"  /* ASCII Start Of Header */
                     ^
   include/linux/printk.h:137:10: note: in definition of macro 'no_printk'
      printk(fmt, ##__VA_ARGS__);  \
             ^~~
   include/linux/kern_levels.h:15:20: note: in expansion of macro 'KERN_SOH'
    #define KERN_DEBUG KERN_SOH "7" /* debug-level messages */
                       ^~~~~~~~
   include/linux/printk.h:342:12: note: in expansion of macro 'KERN_DEBUG'
     no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
               ^~~~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:4203:2: note: in expansion of macro 'pr_debug'
     pr_debug("%s: %*ph\n", "Recv", msg->rsp, msg->rsp_size);
     ^~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:4203:18: note: format string is defined here
     pr_debug("%s: %*ph\n", "Recv", msg->rsp, msg->rsp_size);
                   ~~^
                   %*d
   In file included from include/linux/kernel.h:15:0,
                    from include/linux/list.h:9,
                    from include/linux/module.h:9,
                    from drivers/char/ipmi/ipmi_msghandler.c:17:
   drivers/char/ipmi/ipmi_msghandler.c: In function 'smi_from_recv_msg':
>> include/linux/kern_levels.h:5:18: warning: field width specifier '*' expects argument of type 'int', but argument 4 has type 'unsigned char *' [-Wformat=]
    #define KERN_SOH "\001"  /* ASCII Start Of Header */
                     ^
   include/linux/printk.h:137:10: note: in definition of macro 'no_printk'
      printk(fmt, ##__VA_ARGS__);  \
             ^~~
   include/linux/kern_levels.h:15:20: note: in expansion of macro 'KERN_SOH'
    #define KERN_DEBUG KERN_SOH "7" /* debug-level messages */
                       ^~~~~~~~
   include/linux/printk.h:342:12: note: in expansion of macro 'KERN_DEBUG'
     no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
               ^~~~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:4562:2: note: in expansion of macro 'pr_debug'
     pr_debug("%s: %*ph\n", "Resend", smi_msg->data, smi_msg->data_size);
     ^~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:4562:17: note: format string is defined here
     pr_debug("%s: %*ph\n", "Resend", smi_msg->data, smi_msg->data_size);
                   ~^~
   In file included from include/linux/kernel.h:15:0,
                    from include/linux/list.h:9,
                    from include/linux/module.h:9,
                    from drivers/char/ipmi/ipmi_msghandler.c:17:
>> include/linux/kern_levels.h:5:18: warning: format '%p' expects argument of type 'void *', but argument 5 has type 'int' [-Wformat=]
    #define KERN_SOH "\001"  /* ASCII Start Of Header */
                     ^
   include/linux/printk.h:137:10: note: in definition of macro 'no_printk'
      printk(fmt, ##__VA_ARGS__);  \
             ^~~
   include/linux/kern_levels.h:15:20: note: in expansion of macro 'KERN_SOH'
    #define KERN_DEBUG KERN_SOH "7" /* debug-level messages */
                       ^~~~~~~~
   include/linux/printk.h:342:12: note: in expansion of macro 'KERN_DEBUG'
     no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
               ^~~~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:4562:2: note: in expansion of macro 'pr_debug'
     pr_debug("%s: %*ph\n", "Resend", smi_msg->data, smi_msg->data_size);
     ^~~~~~~~
   drivers/char/ipmi/ipmi_msghandler.c:4562:18: note: format string is defined here
     pr_debug("%s: %*ph\n", "Resend", smi_msg->data, smi_msg->data_size);
                   ~~^
                   %*d

vim +5 include/linux/kern_levels.h

314ba3520e513a Joe Perches 2012-07-30  4  
04d2c8c83d0e3a Joe Perches 2012-07-30 @5  #define KERN_SOH	"\001"		/* ASCII Start Of Header */
04d2c8c83d0e3a Joe Perches 2012-07-30  6  #define KERN_SOH_ASCII	'\001'
04d2c8c83d0e3a Joe Perches 2012-07-30  7  

:::::: The code at line 5 was first introduced by commit
:::::: 04d2c8c83d0e3ac5f78aeede51babb3236200112 printk: convert the format for KERN_<LEVEL> to a 2 byte pattern

:::::: TO: Joe Perches <joe@perches.com>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--twpcu5x4akxomolk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--twpcu5x4akxomolk
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--twpcu5x4akxomolk
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--twpcu5x4akxomolk--

