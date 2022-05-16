Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD28528A0D
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 May 2022 18:15:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nqdNL-0005X8-S4; Mon, 16 May 2022 16:15:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nqdNK-0005X1-OW
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 16:15:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PIv49Au7mWUtjtiXxMXTyggVGnciDRRtT7um8nVDYk4=; b=W95g6EWSa4zEmU5dX8KZHSoagv
 Id6V8lIVegLy2QThGjWfHTZ89/zpLbSecyBe/P25GbOzF0vwS0FVMPIHnhFyP/0sF6J2z3GYTtCdR
 P9kViuroDXzEoWbXuCCJp9NB6RsETLsA5HnT35aohF3BOqPSVjz69+C+XrkgmEnJaiMg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PIv49Au7mWUtjtiXxMXTyggVGnciDRRtT7um8nVDYk4=; b=gZkLsMvu8MNC6dSJNBdnWt55ms
 bRNEuSSTAd+teuGC34Sok5uJE1O9sKMsOkcsiQgeVbGiMgAYEr22BnzRfuE+AUmCd1HG9OjWc/ihb
 m09eQEqy7UHCf1k4XSNIRPu/V8Oveq05hAEdlDMBMENs2AeUv2pehMLe0w2T0nG7m3BI=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nqdNJ-00HT2W-0C
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 16:15:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PIv49Au7mWUtjtiXxMXTyggVGnciDRRtT7um8nVDYk4=; b=W9A8UVl73mnQpa2JfREz1/RjUD
 zYyRgDERy8oLTucF5f6T3XYTYFxiYllr5CQxIlx/2/XHDyXsh2W9hjY4uVe+74TxD7M98QISaac+a
 M7XywdJvFk3YG6Om4dgtt5ZeREfbqmya73Q1q8sGS0PyxTmdYWxoXovpo5Reb9GHmn6GX3kYePtt9
 IQtccx7PFkV6oeWvXiWxYIASmBN1PSkHoG23EqfeJ4/9AnnlTg/3Cg5Gj6/V0JoJ4G9Oz6SNv0UpO
 oX86uCQ+LAaAZQRMJjQodINX8vAHrHrxg8rbSrTF+qNyz++8FSDvG3i4nZYWzKQgJVfsg8L/5DYyI
 pIoBjijQ==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nqdMt-006sm6-Mg; Mon, 16 May 2022 18:14:47 +0200
Message-ID: <90133fbb-2b5e-e7cd-e1fc-1f74e8bcd388@igalia.com>
Date: Mon, 16 May 2022 13:14:17 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Steven Rostedt <rostedt@goodmis.org>, Xiaoming Ni <nixiaoming@huawei.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-19-gpiccoli@igalia.com>
 <9f44aae6-ec00-7ede-ec19-6e67ceb74510@huawei.com>
 <20220510132922.61883db0@gandalf.local.home>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <20220510132922.61883db0@gandalf.local.home>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/05/2022 14:29, Steven Rostedt wrote: > [...] > Also,
 don't sprinkle #ifdef in C code. Instead: > > if
 (IS_ENABLED(CONFIG_DEBUG_NOTIFIERS))
 > pr_info("notifers: regsiter %ps()\n", > n->notifer_ca [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nqdNJ-00HT2W-0C
Subject: Re: [Openipmi-developer] [PATCH 18/30] notifier: Show function
 names on notifier routines if DEBUG_NOTIFIERS is set
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 linux-xtensa@linux-xtensa.org, peterz@infradead.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, Valentin Schneider <valentin.schneider@arm.com>,
 vgoyal@redhat.com, pmladek@suse.com, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, linux-um@lists.infradead.org, rcu@vger.kernel.org,
 gregkh@linuxfoundation.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, Cong Wang <xiyou.wangcong@gmail.com>,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 Arjan van de Ven <arjan@linux.intel.com>, vkuznets@redhat.com,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 10/05/2022 14:29, Steven Rostedt wrote:
> [...]
> Also, don't sprinkle #ifdef in C code. Instead:
> 
> 	if (IS_ENABLED(CONFIG_DEBUG_NOTIFIERS))
> 		pr_info("notifers: regsiter %ps()\n",
> 			n->notifer_call);
> 
> 
> Or define a print macro at the start of the C file that is a nop if it is
> not defined, and use the macro.

Thanks, I'll go with the IS_ENABLED() idea in V2 - appreciate the hint.
Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
