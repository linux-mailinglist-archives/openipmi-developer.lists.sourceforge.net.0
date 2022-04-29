Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B00514C26
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Apr 2022 16:03:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkRD0-0003sE-VP; Fri, 29 Apr 2022 14:03:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nkRCx-0003s4-RX
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 14:02:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kwZz8z1ErGu8KMfXFyk29Ho8CQRFEY51B59OF6or4Ek=; b=kLMKqzKBAtHRwcmBbB/5ubg3kS
 wcDoA7XTZxxiPJz0JGzvVP+EGwuPTs+t44liFxyr4fyfTWP70kQD7J64shMBlAf/YVi2o5Cl9OaAy
 65AUTPLcLZVM+n/gJT/7lMt9ae3rC4OdkVAOCBGxUxZ+YcfD0E69ALemdnzwgrX2CqWg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kwZz8z1ErGu8KMfXFyk29Ho8CQRFEY51B59OF6or4Ek=; b=LbqVgVwyfLmmgJSr0JSoQ903mL
 E9Zpts7GDB8nBAfO/ZLJxCboq+vA4KC4G+mlA3SV6ozaWbkMhNEXnALFdZi3S8ECH9ZiHT+EwF7uK
 9BmTGbj9k2NuZ4H3OIotOrAI289UtsZ1CgCabUlQjAa11oPgAultfCbVNlqr6M66VxlU=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkRCy-00DrsO-1D
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 14:02:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kwZz8z1ErGu8KMfXFyk29Ho8CQRFEY51B59OF6or4Ek=; b=PV6iGrw6a2PVwUqtN4K8zn62B4
 AVOvfuxpf+YqiDNw4wPls4rd7BZZRLk+DlIthCPmmpYzWeS6x1CxEGIJ+6ftYWBgJvBFfwGJOqCh5
 xlyk58zJVRPZef1SLet0zp5ibM7QDVVnOlmapmbP9P5ItPWzgMAPliAvmIbKMRpx1ZzLU5PWVzzn/
 sHvml72t32exF/AwwtKJVJzJexH4h9oxDHF0YV+DR3EbrkMYfXiYu6ewm7xFOm0g961CiqJr+h+xh
 qH6hC6fDAmncBkbOEiIY7tl+ZJgFaXJC+Qr6IL6xzP0mvIw9YmD61TykJP9krK0bs+lwyGwpmSvki
 syiNIcrw==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nkRCW-0007vi-1F; Fri, 29 Apr 2022 16:02:28 +0200
Message-ID: <79472351-c6ce-a060-ef24-f64b6dce1637@igalia.com>
Date: Fri, 29 Apr 2022 11:01:59 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Suzuki K Poulose <suzuki.poulose@arm.com>, akpm@linux-foundation.org,
 bhe@redhat.com, pmladek@suse.com, kexec@lists.infradead.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-10-gpiccoli@igalia.com>
 <3cafe4fd-8a0b-2633-44a3-2995abd6c38c@arm.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <3cafe4fd-8a0b-2633-44a3-2995abd6c38c@arm.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 28/04/2022 05:11, Suzuki K Poulose wrote: > Hi Guilherme, 
 > [...] > How would you like to proceed with queuing this ? I am happy >
 either way. In case you plan to push this as part of this > series [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nkRCy-00DrsO-1D
Subject: Re: [Openipmi-developer] [PATCH 09/30] coresight: cpu-debug:
 Replace mutex with mutex_trylock on panic notifier
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
 gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, Mike Leach <mike.leach@linaro.org>,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, Leo Yan <leo.yan@linaro.org>,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, kernel@gpiccoli.net,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 28/04/2022 05:11, Suzuki K Poulose wrote:
> Hi Guilherme,
> [...] 
> How would you like to proceed with queuing this ? I am happy
> either way. In case you plan to push this as part of this
> series (I don't see any potential conflicts) :
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Thanks for your review Suzuki, much appreciated!

About your question, I'm not sure yet - in case the core changes would
take a while (like if community find them polemic, require many changes,
etc) I might split this series in 2 parts, the fixes part vs the
improvements per se. Either way, a V2 is going to happen for sure, and
in that moment, I'll let you know what I think it's best.

But either way, any choice you prefer is fine by me as well (like if you
want to merge it now or postpone to get merged in the future), this is
not an urgent fix I think =)
Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
