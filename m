Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 530F751FF41
	for <lists+openipmi-developer@lfdr.de>; Mon,  9 May 2022 16:14:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1no49l-0002P4-3T; Mon, 09 May 2022 14:14:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1no49j-0002Oq-QS
 for openipmi-developer@lists.sourceforge.net; Mon, 09 May 2022 14:14:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=21Vuf08H7s2roER44d4b0UgJl5trrJFyPVjW1sFjFZE=; b=Yx3lMWAixfUH8iHw2y2HASDHXZ
 IDF6GycIhXOEzvPlP8iHxO25nIk7i5ynEC7b/ppo4ExhoJzYqBYwb1cufpRSHuhiLvOV48YODODQb
 ZfXhVZLwNLK4+MdN6DoKGzQlk18FjI1YtvWIZnTukiIbkYgVxK9wYxD3FqlLHlmxChAg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=21Vuf08H7s2roER44d4b0UgJl5trrJFyPVjW1sFjFZE=; b=ltlp0VRT2CK8y+74O62WGliTob
 JCHix0k6G5N8dbvG3TvOz6aA/1QqYNFsZ+x/b90h7quQ/9ZpZpYKLkP9rlC+dTyBejFw+MS4xTeHz
 8tnrnt5NQcPtGG3WnOUgK83If1gM1t4oCMIR47FSLajhbHK2GabJPYMmEan6P6/kI3lE=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1no49g-0000sX-20
 for openipmi-developer@lists.sourceforge.net; Mon, 09 May 2022 14:14:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=21Vuf08H7s2roER44d4b0UgJl5trrJFyPVjW1sFjFZE=; b=ruDiqyoExl2jG8ttjj8Kva7F0Z
 0gmy1ZjUnSZw1kESJcz3XDyEnMdDBnsUYP/IGGe7AdFcEsabz8oUBo80VtrFGlI8cQnzWF9UlpBBK
 4aFG0PgEAjxrGpxgz2rOXDVYxrjQeGb+FiM0Mo8j9WOU5B7iKslK22FH7g8xu7/o+vhoBdIcLeTVq
 TXR8EZtHjX3vb/+hbwrFc/UcTSPrqLuaLvGSeO7jUEfo1fKsk4NXM02lMULpMgFIGTd5/R8izOFMK
 smJXU8ctgfXKSVE5XSrKVK5cDdrQAjusLpX81WYReyDmurYDvxkw6DQoXAKa1dqFr5Ui2vHbk0ezv
 WsObUf8Q==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1no48z-000Acu-NN; Mon, 09 May 2022 16:13:50 +0200
Message-ID: <f6def662-5742-b3a8-544f-bf15c636d83d@igalia.com>
Date: Mon, 9 May 2022 11:13:17 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Matt Turner <mattst88@gmail.com>, rth@gcc.gnu.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-11-gpiccoli@igalia.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <20220427224924.592546-11-gpiccoli@igalia.com>
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 27/04/2022 19:49, Guilherme G. Piccoli wrote: > The alpha
 panic notifier has some code issues, not following > the conventions of other
 notifiers. Also, it might halt the > machine but still it is [...] 
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1no49g-0000sX-20
Subject: Re: [Openipmi-developer] [PATCH 10/30] alpha: Clean-up the panic
 notifier code
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
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, pmladek@suse.com,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, gregkh@linuxfoundation.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, vkuznets@redhat.com,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 27/04/2022 19:49, Guilherme G. Piccoli wrote:
> The alpha panic notifier has some code issues, not following
> the conventions of other notifiers. Also, it might halt the
> machine but still it is set to run as early as possible, which
> doesn't seem to be a good idea.
> 
> This patch cleans the code, and set the notifier to run as the
> latest, following the same approach other architectures are doing.
> Also, we remove the unnecessary include of a header already
> included indirectly.
> 
> Cc: Ivan Kokshaysky <ink@jurassic.park.msu.ru>
> Cc: Matt Turner <mattst88@gmail.com>
> Cc: Richard Henderson <rth@twiddle.net>
> Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
> ---
>  arch/alpha/kernel/setup.c | 36 +++++++++++++++---------------------
>  1 file changed, 15 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/alpha/kernel/setup.c b/arch/alpha/kernel/setup.c
> index b4fbbba30aa2..d88bdf852753 100644
> --- a/arch/alpha/kernel/setup.c
> +++ b/arch/alpha/kernel/setup.c
> @@ -41,19 +41,11 @@
>  #include <linux/sysrq.h>
>  #include <linux/reboot.h>
>  #endif
> -#include <linux/notifier.h>
>  #include <asm/setup.h>
>  #include <asm/io.h>
>  #include <linux/log2.h>
>  #include <linux/export.h>
>  
> -static int alpha_panic_event(struct notifier_block *, unsigned long, void *);
> -static struct notifier_block alpha_panic_block = {
> -	alpha_panic_event,
> -        NULL,
> -        INT_MAX /* try to do it first */
> -};
> -
>  #include <linux/uaccess.h>
>  #include <asm/hwrpb.h>
>  #include <asm/dma.h>
> @@ -435,6 +427,21 @@ static const struct sysrq_key_op srm_sysrq_reboot_op = {
>  };
>  #endif
>  
> +static int alpha_panic_event(struct notifier_block *this,
> +			     unsigned long event, void *ptr)
> +{
> +	/* If we are using SRM and serial console, just hard halt here. */
> +	if (alpha_using_srm && srmcons_output)
> +		__halt();
> +
> +	return NOTIFY_DONE;
> +}
> +
> +static struct notifier_block alpha_panic_block = {
> +	.notifier_call = alpha_panic_event,
> +	.priority = INT_MIN, /* may not return, do it last */
> +};
> +
>  void __init
>  setup_arch(char **cmdline_p)
>  {
> @@ -1427,19 +1434,6 @@ const struct seq_operations cpuinfo_op = {
>  	.show	= show_cpuinfo,
>  };
>  
> -
> -static int
> -alpha_panic_event(struct notifier_block *this, unsigned long event, void *ptr)
> -{
> -#if 1
> -	/* FIXME FIXME FIXME */
> -	/* If we are using SRM and serial console, just hard halt here. */
> -	if (alpha_using_srm && srmcons_output)
> -		__halt();
> -#endif
> -        return NOTIFY_DONE;
> -}
> -
>  static __init int add_pcspkr(void)
>  {
>  	struct platform_device *pd;


Hi folks, I'm updating Richard's email and re-sending the V1, any
reviews are greatly appreciated!

Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
