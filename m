Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2C251492E
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Apr 2022 14:23:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkPf6-000741-LL; Fri, 29 Apr 2022 12:23:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sergei.shtylyov@gmail.com>) id 1nkMq8-0003my-FD
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 09:23:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bhPxd6svpKOboxST/6guS4MOSMze/71rIJIgOQA8rZo=; b=NkOVX7fO0H/Hh4rG2WcwOxK3de
 rrAd+4UTsgyXMQwSPrwEx+LP6z47X12sG4OhBLDLMplloZSwYfsjURGnKgnEjVLIB9JtfoCVZsKqG
 9A+FbB1q3T69DTKS6CJEOOeq8OkbhVW+mR6mxmxPVxSOq4gGh2HqgsndQX1OgW8uQHbk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bhPxd6svpKOboxST/6guS4MOSMze/71rIJIgOQA8rZo=; b=Z0rahQWId7dyFD5jff+VVKKSo8
 0SfIS54ac6iFV9/e8Pw0FIEoeyBZt318aS7XKskwDbEjlhKtSg45kDrwBzEUjCjqaLbiPBTjfuHB8
 20NV1Uw85DFDjWZLe0/2TNQbBgz+Cn5Z6WrDrg9bvkOn75bNxSMA4y6TEtSPC3o/CQT8=;
Received: from mail-lf1-f49.google.com ([209.85.167.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nkMpz-00Di3j-PJ
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 09:22:57 +0000
Received: by mail-lf1-f49.google.com with SMTP id p12so12970747lfs.5
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 29 Apr 2022 02:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bhPxd6svpKOboxST/6guS4MOSMze/71rIJIgOQA8rZo=;
 b=CcHlI3Au6GCo1UVzpXVov/h1wYElTNB9KLySGMMq2ve/a+TtvK5YlNIE1buiqFG4Nl
 u/yJNPitTZt8sIeOJjB65Ui/1u355v1A2H7rivfKbBLHtHs+twE1aeJijeY6w74gk/C9
 beognAtlmiiMUVoRPY2P2xBjOD5kn8WzXajIeBHjp2IbcVFILkaLGvvcgQymLNFVLX7W
 O2NCAewH21dEqhwgYIy8zCJ1hXEDN8sGRLk/bc4Oj4c5AC8PD4Xjq19cf3SOi69El8Xe
 CE7Bw/RGpPKDZ+W4HqGQMjQxaF5kblB25nziyJo7yUSAzUuWVoHRSngnqULHAZHmFVOo
 K43A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bhPxd6svpKOboxST/6guS4MOSMze/71rIJIgOQA8rZo=;
 b=2HSxXydzAwDWd3qq5BxDuydqBQs2PyfFQDJKerghrqAEr7+k5GCSmUKlJv22ArW7KK
 oM68pvoNNSbbG2KiXodfNxt/CQ38p2mqZ6ZsBUSbasVdiDphotv5qJNUg0JdmLCVLS73
 +VVjcpd1/9eelTg4VAUmELVpl238ernY2A5PZuVb7bJ5g0IjjQgzyjsWM1++Ib9aySiV
 uCh+PfqFxLyb7unJ4B1zjkXJJPnnXBJvezjPFHd/Odur869edPlgP30gwyD4NLc8pJRO
 FyPKPVz8dkUOhN4i4mdY3CgkL3U3wHrdmXf3uoI+LhXDPrhDJ/Ng/IgSeDmodZFBr7Ss
 xVUA==
X-Gm-Message-State: AOAM531sdCmFPFcpFDcGFo3+pZGf6qy9UCuwwG1Tra6ffgHvOD1uha3T
 F9SGznh/kpm/umYFjPIIGMg=
X-Google-Smtp-Source: ABdhPJzFja3bmADODH1fdpoqaNJXuuCGiOo+I2PKC036x77KFxdRqfAwbMVEMu8UhB/GID87ZxayFg==
X-Received: by 2002:a05:6512:3ba0:b0:472:49f2:a752 with SMTP id
 g32-20020a0565123ba000b0047249f2a752mr1049387lfv.374.1651224168844; 
 Fri, 29 Apr 2022 02:22:48 -0700 (PDT)
Received: from [192.168.1.103] ([178.176.73.25])
 by smtp.gmail.com with ESMTPSA id
 e1-20020a196741000000b0046bc4be1d60sm192072lfj.123.2022.04.29.02.22.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 Apr 2022 02:22:48 -0700 (PDT)
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>, akpm@linux-foundation.org,
 bhe@redhat.com, pmladek@suse.com, kexec@lists.infradead.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-18-gpiccoli@igalia.com>
From: Sergei Shtylyov <sergei.shtylyov@gmail.com>
Message-ID: <b8771b37-01f5-f50b-dbb3-9db4ee26e67e@gmail.com>
Date: Fri, 29 Apr 2022 12:22:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20220427224924.592546-18-gpiccoli@igalia.com>
Content-Language: en-US
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello! On 4/28/22 1:49 AM,
 Guilherme G. Piccoli wrote: > Currently
 the tracing dump_on_oops feature is implemented > through separate notifiers, 
 one for die/oops and the other > for panic. With the addition of panic
 notifier "id", this > patch makes use o [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergei.shtylyov[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.49 listed in wl.mailspike.net]
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nkMpz-00Di3j-PJ
X-Mailman-Approved-At: Fri, 29 Apr 2022 12:23:50 +0000
Subject: Re: [Openipmi-developer] [PATCH 17/30] tracing: Improve panic/die
 notifiers
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
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, coresight@lists.linaro.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello!

On 4/28/22 1:49 AM, Guilherme G. Piccoli wrote:

> Currently the tracing dump_on_oops feature is implemented
> through separate notifiers, one for die/oops and the other
> for panic. With the addition of panic notifier "id", this
> patch makes use of such "id" to unify both functions.
> 
> It also comments the function and changes the priority of the
> notifier blocks, in order they run early compared to other
> notifiers, to prevent useless trace data (like the callback
> names for the other notifiers). Finally, we also removed an
> unnecessary header inclusion.
> 
> Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
> ---
>  kernel/trace/trace.c | 57 +++++++++++++++++++++++++-------------------
>  1 file changed, 32 insertions(+), 25 deletions(-)
> 
> diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
> index f4de111fa18f..c1d8a3622ccc 100644
> --- a/kernel/trace/trace.c
> +++ b/kernel/trace/trace.c
[...]
> @@ -9767,38 +9766,46 @@ static __init int tracer_init_tracefs(void)
>  
>  fs_initcall(tracer_init_tracefs);
>  
> -static int trace_panic_handler(struct notifier_block *this,
> -			       unsigned long event, void *unused)
> +/*
> + * The idea is to execute the following die/panic callback early, in order
> + * to avoid showing irrelevant information in the trace (like other panic
> + * notifier functions); we are the 2nd to run, after hung_task/rcu_stall
> + * warnings get disabled (to prevent potential log flooding).
> + */
> +static int trace_die_panic_handler(struct notifier_block *self,
> +				unsigned long ev, void *unused)
>  {
> -	if (ftrace_dump_on_oops)
> +	int do_dump;

   bool?

> +
> +	if (!ftrace_dump_on_oops)
> +		return NOTIFY_DONE;
> +
> +	switch (ev) {
> +	case DIE_OOPS:
> +		do_dump = 1;
> +		break;
> +	case PANIC_NOTIFIER:
> +		do_dump = 1;
> +		break;

   Why not:

	case DIE_OOPS:
	case PANIC_NOTIFIER:
		do_dump = 1;
		break;

> +	default:
> +		do_dump = 0;
> +		break;
> +	}
> +
> +	if (do_dump)
>  		ftrace_dump(ftrace_dump_on_oops);
> -	return NOTIFY_OK;
> +
> +	return NOTIFY_DONE;
>  }
[...]

MBR, Sergey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
