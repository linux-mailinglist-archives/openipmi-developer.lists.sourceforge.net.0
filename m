Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C021384F7
	for <lists+openipmi-developer@lfdr.de>; Sun, 12 Jan 2020 06:27:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iqVm6-00028C-9U; Sun, 12 Jan 2020 05:26:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lkp@intel.com>) id 1iqVm4-000281-5V
 for openipmi-developer@lists.sourceforge.net; Sun, 12 Jan 2020 05:26:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0rQCpXzUBSXKN8N9vgTEHliehXnHgtx2p+QrtL0wxWk=; b=isLgXTS2Cw8U+F5DzSiUQVyD8r
 e69TaYEltrVgKe7AzduhOTSrTHx5b7vBg0PudG/+BV/jwg1YB38UvVq/pqXxlkjMaOHclcwBfBV2i
 iAQtKSubRFsV5yxO4NSfeU616MTGbWBTejxdlKaNxFnh9//pV6zSrqaO2+lVI11olLIY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0rQCpXzUBSXKN8N9vgTEHliehXnHgtx2p+QrtL0wxWk=; b=SrZSekvR3VCJZMfeDy2cAoN75p
 pdd8YRdy3caeia1VcyKH76FKGhGrLwtoy13NkRMEeetcDw8OB+dNqXt6grRXQp58jlg4Rky9ysMq7
 Ub1nZURQqfSRX6v1oF4lKoIHsaYhvHdH2QUSJ3JyJiSNMVdrwQO07ntNhHbeFj7kAvbk=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iqVm2-00HJQE-I3
 for openipmi-developer@lists.sourceforge.net; Sun, 12 Jan 2020 05:26:57 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jan 2020 21:26:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,423,1571727600"; 
 d="gz'50?scan'50,208,50";a="423988165"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 11 Jan 2020 21:26:46 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iqVlt-0006pj-Vw; Sun, 12 Jan 2020 13:26:45 +0800
Date: Sun, 12 Jan 2020 13:25:58 +0800
From: kbuild test robot <lkp@intel.com>
To: Amol Grover <frextrite@gmail.com>
Message-ID: <202001121358.YVbD4V9l%lkp@intel.com>
References: <20200110164709.26741-1-frextrite@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tblulw6joqrajp7g"
Content-Disposition: inline
In-Reply-To: <20200110164709.26741-1-frextrite@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: stackoverflow.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iqVm2-00HJQE-I3
Subject: Re: [Openipmi-developer] [PATCH v2] drivers: char: ipmi:
 ipmi_msghandler: Pass lockdep expression to RCU lists
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
Cc: kbuild-all@lists.01.org, Corey Minyard <minyard@acm.org>,
 Arnd Bergmann <arnd@arndb.de>, Amol Grover <frextrite@gmail.com>,
 "Paul E . McKenney" <paulmck@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Joel Fernandes <joel@joelfernandes.org>,
 openipmi-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--tblulw6joqrajp7g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Amol,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on char-misc/char-misc-testing]
[also build test WARNING on ipmi/for-next arm-soc/for-next v5.5-rc5]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Amol-Grover/drivers-char-ipmi-ipmi_msghandler-Pass-lockdep-expression-to-RCU-lists/20200111-081002
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git 16bb7abc4a6b9defffa294e4dc28383e62a1dbcf
config: x86_64-randconfig-a003-20200109 (attached as .config)
compiler: gcc-5 (Ubuntu 5.5.0-12ubuntu1) 5.5.0 20171010
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/export.h:43:0,
                    from include/linux/linkage.h:7,
                    from include/linux/kernel.h:8,
                    from include/linux/list.h:9,
                    from include/linux/module.h:12,
                    from drivers/char/ipmi/ipmi_msghandler.c:17:
   drivers/char/ipmi/ipmi_msghandler.c: In function 'find_cmd_rcvr':
   include/linux/rculist.h:53:25: warning: suggest parentheses around '&&' within '||' [-Wparentheses]
     RCU_LOCKDEP_WARN(!cond && !rcu_read_lock_any_held(),  \
                            ^
   include/linux/compiler.h:58:52: note: in definition of macro '__trace_if_var'
    #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                       ^
>> include/linux/rcupdate.h:263:3: note: in expansion of macro 'if'
      if (debug_lockdep_rcu_enabled() && !__warned && (c)) { \
      ^
>> include/linux/rculist.h:53:2: note: in expansion of macro 'RCU_LOCKDEP_WARN'
     RCU_LOCKDEP_WARN(!cond && !rcu_read_lock_any_held(),  \
     ^
   include/linux/rculist.h:371:7: note: in expansion of macro '__list_check_rcu'
     for (__list_check_rcu(dummy, ## cond, 0),   \
          ^
   drivers/char/ipmi/ipmi_msghandler.c:1607:2: note: in expansion of macro 'list_for_each_entry_rcu'
     list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link,
     ^
   include/linux/rculist.h:53:25: warning: suggest parentheses around '&&' within '||' [-Wparentheses]
     RCU_LOCKDEP_WARN(!cond && !rcu_read_lock_any_held(),  \
                            ^
   include/linux/compiler.h:58:61: note: in definition of macro '__trace_if_var'
    #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                                ^
>> include/linux/rcupdate.h:263:3: note: in expansion of macro 'if'
      if (debug_lockdep_rcu_enabled() && !__warned && (c)) { \
      ^
>> include/linux/rculist.h:53:2: note: in expansion of macro 'RCU_LOCKDEP_WARN'
     RCU_LOCKDEP_WARN(!cond && !rcu_read_lock_any_held(),  \
     ^
   include/linux/rculist.h:371:7: note: in expansion of macro '__list_check_rcu'
     for (__list_check_rcu(dummy, ## cond, 0),   \
          ^
   drivers/char/ipmi/ipmi_msghandler.c:1607:2: note: in expansion of macro 'list_for_each_entry_rcu'
     list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link,
     ^
   include/linux/rculist.h:53:25: warning: suggest parentheses around '&&' within '||' [-Wparentheses]
     RCU_LOCKDEP_WARN(!cond && !rcu_read_lock_any_held(),  \
                            ^
   include/linux/compiler.h:69:3: note: in definition of macro '__trace_if_value'
     (cond) ?     \
      ^
   include/linux/compiler.h:56:28: note: in expansion of macro '__trace_if_var'
    #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                               ^
>> include/linux/rcupdate.h:263:3: note: in expansion of macro 'if'
      if (debug_lockdep_rcu_enabled() && !__warned && (c)) { \
      ^
>> include/linux/rculist.h:53:2: note: in expansion of macro 'RCU_LOCKDEP_WARN'
     RCU_LOCKDEP_WARN(!cond && !rcu_read_lock_any_held(),  \
     ^
   include/linux/rculist.h:371:7: note: in expansion of macro '__list_check_rcu'
     for (__list_check_rcu(dummy, ## cond, 0),   \
          ^
   drivers/char/ipmi/ipmi_msghandler.c:1607:2: note: in expansion of macro 'list_for_each_entry_rcu'
     list_for_each_entry_rcu(rcvr, &intf->cmd_rcvrs, link,
     ^

vim +/if +263 include/linux/rcupdate.h

632ee200130899 Paul E. McKenney 2010-02-22  254  
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18  255  /**
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18  256   * RCU_LOCKDEP_WARN - emit lockdep splat if specified condition is met
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18  257   * @c: condition to check
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18  258   * @s: informative message
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18  259   */
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18  260  #define RCU_LOCKDEP_WARN(c, s)						\
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18  261  	do {								\
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18  262  		static bool __section(.data.unlikely) __warned;		\
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18 @263  		if (debug_lockdep_rcu_enabled() && !__warned && (c)) {	\
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18  264  			__warned = true;				\
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18  265  			lockdep_rcu_suspicious(__FILE__, __LINE__, s);	\
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18  266  		}							\
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18  267  	} while (0)
f78f5b90c4ffa5 Paul E. McKenney 2015-06-18  268  

:::::: The code at line 263 was first introduced by commit
:::::: f78f5b90c4ffa559e400c3919a02236101f29f3f rcu: Rename rcu_lockdep_assert() to RCU_LOCKDEP_WARN()

:::::: TO: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
:::::: CC: Paul E. McKenney <paulmck@linux.vnet.ibm.com>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--tblulw6joqrajp7g
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
w17bzy8XAgA=

--tblulw6joqrajp7g
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--tblulw6joqrajp7g
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--tblulw6joqrajp7g--

