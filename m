Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68539518BE4
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 May 2022 20:07:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nlwvg-0000Xq-Iu; Tue, 03 May 2022 18:07:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nlwvf-0000Xk-Do
 for openipmi-developer@lists.sourceforge.net; Tue, 03 May 2022 18:07:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WYW7A1AoQOryf4HZjlafyZKPnHAKwmZXZQ0bWMyg1OM=; b=GgXSx+9Poy5zWHw28IVXV8qPub
 FzZn9DvPs+4k1TKbxyValrMFFXut6NUWIVd8PtuGgwwrKsmBE5B7lwuDBgxy2ehkUddhVtUPco0Qn
 dvgUJHWNJanigX6y4jLzDORWRAdTkvk6aEzwusFjPfsS+36gijOa3aGim6XPYJ0KlOn8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WYW7A1AoQOryf4HZjlafyZKPnHAKwmZXZQ0bWMyg1OM=; b=ENZfKBA9ZMlUhQExACAXmP9R/V
 O4ddoB6Fib5sj5BMezq9mtAGGytQEoCw4Jr0loBbzgUVvhAFR7XnT5PFT8lq0o754Wp9j8ylDCpw2
 YdFxicv9Pmr/JiMOUEMajZWMhNtyWhf8G/YQBrw3Y6zvG2/D4XByW5DW8qf1zwq3N1Os=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nlwvb-0002Jq-Af
 for openipmi-developer@lists.sourceforge.net; Tue, 03 May 2022 18:07:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WYW7A1AoQOryf4HZjlafyZKPnHAKwmZXZQ0bWMyg1OM=; b=IJk7PjWXbuJYxjyJajFcqu+Mif
 2fd51zOcNQRJjfhVuzSoQO9mBBwmDdVBHLRqON1BGirC1Vk8+AoSYO3LiHwD+UN1A9emX95LT9quF
 x9JKLy4HImLNSn0mqdv7zEp5uPj6Lvn09d1aUkR/Hf14MsP+c2ZYwmIAyLwNg0VIkqGkELR5aYgVO
 0xdNy0LqxmoLJzxFqk/oO1+b/WdJOIRWXo4fLVInmE2Yo6XsUwQPE4Yo6Y1hA1Cl8oTHfkCacBbdC
 IAv1LZ4HQl0+X38MUmMlSpApf42pMuXeETEON4eFrPMp1+0PSjab3dBLEc1woBTNMiXT6t4Yfmen7
 fHSrzQsQ==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nlwvB-000AFb-By; Tue, 03 May 2022 20:06:49 +0200
Message-ID: <12b5a753-c0f1-9da5-f269-483384752837@igalia.com>
Date: Tue, 3 May 2022 15:06:15 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: "Michael Kelley (LINUX)" <mikelley@microsoft.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "bhe@redhat.com" <bhe@redhat.com>, "pmladek@suse.com" <pmladek@suse.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-25-gpiccoli@igalia.com>
 <PH0PR21MB30252C55EB4F97F3D78021BDD7FC9@PH0PR21MB3025.namprd21.prod.outlook.com>
 <50178dfb-8e94-f35f-09c3-22fe197550ef@igalia.com>
 <PH0PR21MB302570C9407F80AAD09E209ED7C09@PH0PR21MB3025.namprd21.prod.outlook.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <PH0PR21MB302570C9407F80AAD09E209ED7C09@PH0PR21MB3025.namprd21.prod.outlook.com>
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 03/05/2022 14:31, Michael Kelley (LINUX) wrote: > [...]
 > > To me, it's a weak correlation between having a kmsg dumper, and > wanting
 or not wanting the info level output to come before kdump. > H [...] 
 Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.9 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nlwvb-0002Jq-Af
Subject: Re: [Openipmi-developer] [PATCH 24/30] panic: Refactor the panic
 path
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
Cc: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "halves@canonical.com" <halves@canonical.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "alejandro.j.jimenez@oracle.com" <alejandro.j.jimenez@oracle.com>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "feng.tang@intel.com" <feng.tang@intel.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "hidehiro.kawai.ez@hitachi.com" <hidehiro.kawai.ez@hitachi.com>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "will@kernel.org" <will@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-leds@vger.kernel.org" <linux-leds@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "john.ogness@linutronix.de" <john.ogness@linutronix.de>,
 "corbet@lwn.net" <corbet@lwn.net>, "paulmck@kernel.org" <paulmck@kernel.org>,
 "fabiomirmar@gmail.com" <fabiomirmar@gmail.com>,
 "x86@kernel.org" <x86@kernel.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 "dyoung@redhat.com" <dyoung@redhat.com>,
 "vgoyal@redhat.com" <vgoyal@redhat.com>,
 "linux-xtensa@linux-xtensa.org" <linux-xtensa@linux-xtensa.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "keescook@chromium.org" <keescook@chromium.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "rcu@vger.kernel.org" <rcu@vger.kernel.org>, "bp@alien8.de" <bp@alien8.de>,
 "luto@kernel.org" <luto@kernel.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 "jgross@suse.com" <jgross@suse.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kernel@gpiccoli.net" <kernel@gpiccoli.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
 "senozhatsky@chromium.org" <senozhatsky@chromium.org>,
 "d.hatayama@jp.fujitsu.com" <d.hatayama@jp.fujitsu.com>,
 "mhiramat@kernel.org" <mhiramat@kernel.org>,
 "kernel-dev@igalia.com" <kernel-dev@igalia.com>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 vkuznets <vkuznets@redhat.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 03/05/2022 14:31, Michael Kelley (LINUX) wrote:
> [...]
> 
> To me, it's a weak correlation between having a kmsg dumper, and
> wanting or not wanting the info level output to come before kdump.
> Hyper-V is one of only a few places that register a kmsg dumper, so most
> Linux instances outside of Hyper-V guest (and PowerPC systems?) will have
> the info level output after kdump.  It seems like anyone who cared strongly
> about the info level output would set the panic_notifier_level to 1 or to 3
> so that the result is more deterministic.  But that's just my opinion, and
> it's probably an opinion that is not as well informed on the topic as some
> others in the discussion. So keeping things as in your patch set is not a
> show-stopper for me.
> 
> However, I would request a clarification in the documentation.   The
> panic_notifier_level affects not only the hypervisor, informational,
> and pre_reboot lists, but it also affects panic_print_sys_info() and
> kmsg_dump().  Specifically, at level 1, panic_print_sys_info() and
> kmsg_dump() will not be run before kdump.  At level 3, they will
> always be run before kdump.  Your documentation above mentions
> "informational lists" (plural), which I take to vaguely include
> kmsg_dump() and panic_print_sys_info(), but being explicit about
> the effect would be better.
> 
> Michael

Thanks again Michael, to express your points and concerns - great idea
of documentation improvement here, I'll do that for V2, for sure.

The idea of "defaulting" to skip the info list on kdump (if no
kmsg_dump() is set) is again a mechanism that aims at accommodating all
users and concerns of antagonistic goals, kdump vs notifier lists.

Before this patch set, by default no notifier executed before kdump. So,
the "pendulum"  was strongly on kdump side, and clearly this was a
sub-optimal decision - proof of that is that both Hyper-V / PowerPC code
forcibly set the "crash_kexec_post_notifiers". The goal here is to have
a more lightweight list that by default runs before kdump, a secondary
list that only runs before kdump if there's usage for that (either user
sets that or kmsg_dumper set is considered a valid user), and the
remaining notifiers run by default only after kdump, all of that very
customizable through the levels idea.

Now, one thing we could do to improve consistency for the hyper-v case:
having a kmsg_dump_once() helper, and *for Hyper-V only*, call it on the
hypervisor list, within the info notifier (that would be moved to
hypervisor list, ofc).
Let's wait for more feedback on that, just throwing some ideas in order
we can have everyone happy with the end-result!

Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
