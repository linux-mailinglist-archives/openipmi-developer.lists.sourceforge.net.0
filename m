Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 021AA5131C6
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 12:57:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nk1pn-0001cl-9n; Thu, 28 Apr 2022 10:57:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <nixiaoming@huawei.com>) id 1njsX9-0004m4-0g
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Apr 2022 01:01:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m7290+IWfIhdcztsp3BSEYjW7A9b1z031WEiVfNEFsY=; b=P9EqSVqF5OqderCJHoLCPdgNmn
 BAotan1hmXt3fvvqah4zky949+MGedD9TlJEeyS7M5VRmE7KCWWKqBdjA6LNpKY/6H3TAoY3ao28G
 gz6Nv/p7UOGwvOL78M7GWSLIjQj+34dUqFcIRHxonBf+JvHmQnRfh5bhyxiD5WYLirtg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m7290+IWfIhdcztsp3BSEYjW7A9b1z031WEiVfNEFsY=; b=knQYAdEKLhD+GQPCdWYTbyFRJH
 xs+ms6hraQy56CrJy6ewxYrnK3aF34Z8zljKdZXgkwbOKyALhrURDJX5BouBoGXjdwGQP08RXRhhb
 /H5cv+1AQGLAuX+arl3pbDikv1iTBp+GtsaE642INBez+0dSDUh6Fa04MDT1YXHcP0eM=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njsX8-00CDNT-Gq
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Apr 2022 01:01:27 +0000
Received: from canpemm500006.china.huawei.com (unknown [172.30.72.57])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Kpcgf1MZfzGpMl;
 Thu, 28 Apr 2022 08:58:38 +0800 (CST)
Received: from [10.67.110.83] (10.67.110.83) by canpemm500006.china.huawei.com
 (7.192.105.130) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Thu, 28 Apr
 2022 09:01:14 +0800
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>, <akpm@linux-foundation.org>, 
 <bhe@redhat.com>, <pmladek@suse.com>, <kexec@lists.infradead.org>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-19-gpiccoli@igalia.com>
Message-ID: <9f44aae6-ec00-7ede-ec19-6e67ceb74510@huawei.com>
Date: Thu, 28 Apr 2022 09:01:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.0.1
MIME-Version: 1.0
In-Reply-To: <20220427224924.592546-19-gpiccoli@igalia.com>
X-Originating-IP: [10.67.110.83]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 canpemm500006.china.huawei.com (7.192.105.130)
X-CFilter-Loop: Reflected
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/4/28 6:49, Guilherme G. Piccoli wrote: > Currently
 we have a debug infrastructure in the notifiers file,
 but > it's very simple/limited.
 This patch extends it by: > > (a) Showing all registere [...] 
 Content analysis details:   (-4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1njsX8-00CDNT-Gq
X-Mailman-Approved-At: Thu, 28 Apr 2022 10:57:17 +0000
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
From: Xiaoming Ni via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Xiaoming Ni <nixiaoming@huawei.com>
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 gregkh@linuxfoundation.org, peterz@infradead.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, Valentin Schneider <valentin.schneider@arm.com>,
 vgoyal@redhat.com, linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, Cong Wang <xiyou.wangcong@gmail.com>,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 Arjan van de Ven <arjan@linux.intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 2022/4/28 6:49, Guilherme G. Piccoli wrote:
> Currently we have a debug infrastructure in the notifiers file, but
> it's very simple/limited. This patch extends it by:
> 
> (a) Showing all registered/unregistered notifiers' callback names;
> 
> (b) Adding a dynamic debug tuning to allow showing called notifiers'
> function names. Notice that this should be guarded as a tunable since
> it can flood the kernel log buffer.
> 
> Cc: Arjan van de Ven <arjan@linux.intel.com>
> Cc: Cong Wang <xiyou.wangcong@gmail.com>
> Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Cc: Valentin Schneider <valentin.schneider@arm.com>
> Cc: Xiaoming Ni <nixiaoming@huawei.com>
> Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
> ---
> 
> We have some design decisions that worth discussing here:
> 
> (a) First of call, using C99 helps a lot to write clear and concise code, but
> due to commit 4d94f910e79a ("Kbuild: use -Wdeclaration-after-statement") we
> have a warning if mixing variable declarations with code. For this patch though,
> doing that makes the code way clear, so decision was to add the debug code
> inside brackets whenever this warning pops up. We can change that, but that'll
> cause more ifdefs in the same function.
> 
> (b) In the symbol lookup helper function, we modify the parameter passed but
> even more, we return it as well! This is unusual and seems unnecessary, but was
> the strategy taken to allow embedding such function in the pr_debug() call.
> 
> Not doing that would likely requiring 3 symbol_name variables to avoid
> concurrency (registering notifier A while calling notifier B) - we rely in
> local variables as a serialization mechanism.
> 
> We're open for suggestions in case this design is not appropriate;
> thanks in advance!
> 
>   kernel/notifier.c | 48 +++++++++++++++++++++++++++++++++++++++++++++--
>   1 file changed, 46 insertions(+), 2 deletions(-)
> 
> diff --git a/kernel/notifier.c b/kernel/notifier.c
> index ba005ebf4730..21032ebcde57 100644
> --- a/kernel/notifier.c
> +++ b/kernel/notifier.c
> @@ -7,6 +7,22 @@
>   #include <linux/vmalloc.h>
>   #include <linux/reboot.h>
>   
> +#ifdef CONFIG_DEBUG_NOTIFIERS
> +#include <linux/kallsyms.h>
> +
> +/*
> + *	Helper to get symbol names in case DEBUG_NOTIFIERS is set.
> + *	Return the modified parameter is a strategy used to achieve
> + *	the pr_debug() functionality - with this, function is only
> + *	executed if the dynamic debug tuning is effectively set.
> + */
> +static inline char *notifier_name(struct notifier_block *nb, char *sym_name)
> +{
> +	lookup_symbol_name((unsigned long)(nb->notifier_call), sym_name);
> +	return sym_name;
> +}
> +#endif
> +
>   /*
>    *	Notifier list for kernel code which wants to be called
>    *	at shutdown. This is used to stop any idling DMA operations
> @@ -34,20 +50,41 @@ static int notifier_chain_register(struct notifier_block **nl,
>   	}
>   	n->next = *nl;
>   	rcu_assign_pointer(*nl, n);
> +
> +#ifdef CONFIG_DEBUG_NOTIFIERS
> +	{
> +		char sym_name[KSYM_NAME_LEN];
> +
> +		pr_info("notifiers: registered %s()\n",
> +			notifier_name(n, sym_name));
> +	}

Duplicate Code.

Is it better to use __func__ and %pS?

pr_info("%s: %pS\n", __func__, n->notifier_call);


> +#endif
>   	return 0;
>   }
>   
>   static int notifier_chain_unregister(struct notifier_block **nl,
>   		struct notifier_block *n)
>   {
> +	int ret = -ENOENT;
> +
>   	while ((*nl) != NULL) {
>   		if ((*nl) == n) {
>   			rcu_assign_pointer(*nl, n->next);
> -			return 0;
> +			ret = 0;
> +			break;
>   		}
>   		nl = &((*nl)->next);
>   	}
> -	return -ENOENT;
> +
> +#ifdef CONFIG_DEBUG_NOTIFIERS
> +	if (!ret) {
> +		char sym_name[KSYM_NAME_LEN];
> +
> +		pr_info("notifiers: unregistered %s()\n",
> +			notifier_name(n, sym_name));
> +	}
Duplicate Code.

Is it better to use __func__ and %pS?

pr_info("%s: %pS\n", __func__, n->notifier_call);
> +#endif
> +	return ret;
>   }
>   
>   /**
> @@ -80,6 +117,13 @@ static int notifier_call_chain(struct notifier_block **nl,
>   			nb = next_nb;
>   			continue;
>   		}
> +
Is the "#ifdef" missing here?
> +		{
> +			char sym_name[KSYM_NAME_LEN];
> +
> +			pr_debug("notifiers: calling %s()\n",
> +				 notifier_name(nb, sym_name));
Duplicate Code.

Is it better to use __func__ and %pS?

pr_info("%s: %pS\n", __func__, n->notifier_call);
> +		}
>   #endif
>   		ret = nb->notifier_call(nb, val, v);
>   
> 

Thanks
Xiaoming Ni


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
