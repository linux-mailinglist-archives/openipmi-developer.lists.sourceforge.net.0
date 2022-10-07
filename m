Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 584B95F7E4B
	for <lists+openipmi-developer@lfdr.de>; Fri,  7 Oct 2022 21:48:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogtKa-0007y2-SP;
	Fri, 07 Oct 2022 19:48:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1ogtKZ-0007xw-M3
 for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 19:48:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=psXOmlC6m+ehjo/V3khCZ2CkeIJwNZoruUBgNGYKZoA=; b=SyyKv9nJHoTxWmJFXXzhWCqSQ2
 vbHVaLXi/0C9KGcqznQKutyrvF6YGAckZvN5fJNmZop2gvRrxrE4su9YqiUW3qLOy1JbWM+rLunmq
 gqie9Q4BnHJvavunNTX2RVlkh00VXQV/l45NsloyoK0Y2h4JRlDsoId/0LvqaSWQ6vQw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=psXOmlC6m+ehjo/V3khCZ2CkeIJwNZoruUBgNGYKZoA=; b=Z86tDv2DrspV5IVzqqU7/SdDKW
 msMBeiPlO1C7ZZ65MN/HoCo4biPaksU3QgG7ZP/6ffJiaqGebVHUgNCuJBg7M5MP8hkL99qB8XdYT
 4epedjRig4NV5tY9umTaS1ByERK4mAkObLzUdQcA8OQZZjdz3s4o9HhwPPGAKaYqxrpk=;
Received: from [209.85.160.169] (helo=mail-qt1-f169.google.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ogtKZ-00G4N7-2G for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 19:48:23 +0000
Received: by mail-qt1-f169.google.com with SMTP id g10so1540460qtu.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 07 Oct 2022 12:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=psXOmlC6m+ehjo/V3khCZ2CkeIJwNZoruUBgNGYKZoA=;
 b=FcXpaDPa8K/ZuBkT5RCD+dTyteZGncqAv6NgRo3Bxn9DcjsRcykK8eOytBIQUUz4Nt
 vG2hMZIGG6IPoSelDOHuel+RIB2kXN5SWfDNCwEYM6T9umPTbiYnFGyxqYq2BHjc0+0T
 NK9/qdkD12B+Fp8MuYoyzRSqu4mdXvaMMQUVEFRBlXiv9lKKBNU0v3CxZlEbIjk1Pdwy
 3Tyn4ju5O69ly9ZuasYBbEThmsmrj9zf2DeD4xyZ9RFoRdkrboylGftCMsgcsD4ljHYS
 abnVogUgpN0xSdjHXqPUyzhuJjQyDS3B6MFNSxYJjY8HpxzcOiFDBy65aolLFD5YvQUj
 ANIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=psXOmlC6m+ehjo/V3khCZ2CkeIJwNZoruUBgNGYKZoA=;
 b=TDPFnhljoRo0w3xcR4VmCaSIg++Sdnw9x1kfswnhGfoEKgnGa/2MIHIKgjIFdHPhK7
 thn95TgsHoFN1SpkHC9HxCA0Gqv2EyBBUL7iKwLdLl3ylqF4G8fF6wGoQKT+BLUezIuT
 W4fsO5enpLE/0ZVIz2vRMrVJKyNEaAEMIDfhQwXkuTlCd0HhN+wJAY3LpHCTSetulUSV
 LYHoPFKYqmoM7tn570AJOk3w+y1kyC5T3fyU6PUJVP0Lf1YVf61QFx9qldB2lz2lQhGb
 IkW69QeYZGAuAy/wA69lqb0aI/Pv5WcsifCyFH40KA8/9stM2FTouQ8k+/pSvw9jYcvk
 Ra/Q==
X-Gm-Message-State: ACrzQf0OZ3YqULgxTk0r/o+yy4ps1yyUwE151upwc/53FK/Q7VAMYciC
 s2MnmbhWkTMldboatG2AILct48+k5w==
X-Google-Smtp-Source: AMsMyM578hMC2Wh663MdKq3LxH3Ftrc+SMxMPGCDVLvBH1y+gW/8yn8XN0RNwYSG4rzhF/4NlR7I3Q==
X-Received: by 2002:a05:622a:100f:b0:35d:862:7d87 with SMTP id
 d15-20020a05622a100f00b0035d08627d87mr5624724qte.328.1665172091977; 
 Fri, 07 Oct 2022 12:48:11 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 bk5-20020a05620a1a0500b006af3f3b385csm2823097qkb.98.2022.10.07.12.48.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Oct 2022 12:48:11 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:fa3f:9b5b:700:c1ba])
 by serve.minyard.net (Postfix) with ESMTPSA id EDD2E1800BD;
 Fri,  7 Oct 2022 19:48:10 +0000 (UTC)
Date: Fri, 7 Oct 2022 14:48:09 -0500
From: Corey Minyard <minyard@acm.org>
To: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
Message-ID: <Y0CCeW1GtiCk0XdQ@minyard.net>
References: <20221007092617.87597-1-zhangyuchen.lcr@bytedance.com>
 <20221007092617.87597-3-zhangyuchen.lcr@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221007092617.87597-3-zhangyuchen.lcr@bytedance.com>
X-Spam-Score: 1.7 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 07, 2022 at 05:26:16PM +0800, Zhang Yuchen wrote:
 > When fixing the problem mentioned in PATCH1, we also found > the following
 problem: > > If the IPMI is disconnected and in the sending p [...] 
 Content analysis details:   (1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.169 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1ogtKZ-00G4N7-2G
Subject: Re: [Openipmi-developer] [PATCH 2/3] ipmi: fix long wait in unload
 when IPMI disconnect
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 qi.zheng@linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Oct 07, 2022 at 05:26:16PM +0800, Zhang Yuchen wrote:
> When fixing the problem mentioned in PATCH1, we also found
> the following problem:
> 
> If the IPMI is disconnected and in the sending process, the
> uninstallation driver will be stuck for a long time.
> 
> The main problem is that uninstalling the driver waits for curr_msg to
> be sent or HOSED. After stopping tasklet, the only place to trigger the
> timeout mechanism is the circular poll in shutdown_smi.
> 
> The poll function delays 10us and calls smi_event_handler(smi_info,10).
> Smi_event_handler deducts 10us from kcs->ibf_timeout.
> 
> But the poll func is followed by schedule_timeout_uninterruptible(1).
> The time consumed here is not counted in kcs->ibf_timeout.
> 
> So when 10us is deducted from kcs->ibf_timeout, at least 1 jiffies has
> actually passed. The waiting time has increased by more than a
> hundredfold.
> 
> Now instead of calling poll(). call smi_event_handler() directly and
> calculate the elapsed time.

Yes, you are correct.

I've included this for 6.2, and added:

  Cc: stable@vger.kernel.org

I would like it to soak for a bit.

-corey

> 
> For verification, you can directly use ebpf to check the kcs->
> ibf_timeout for each call to kcs_event() when IPMI is disconnected.
> Decrement at normal rate before unloading. The decrement rate becomes
> very slow after unloading.
> 
>   $ bpftrace -e 'kprobe:kcs_event {printf("kcs->ibftimeout : %d\n",
>       *(arg0+584));}'
> 
> Signed-off-by: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 27 +++++++++++++++++++--------
>  1 file changed, 19 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 6e357ad76f2e..abddd7e43a9a 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -2153,6 +2153,20 @@ static int __init init_ipmi_si(void)
>  }
>  module_init(init_ipmi_si);
>  
> +static void wait_msg_processed(struct smi_info *smi_info)
> +{
> +	unsigned long jiffies_now;
> +	long time_diff;
> +
> +	while (smi_info->curr_msg || (smi_info->si_state != SI_NORMAL)) {
> +		jiffies_now = jiffies;
> +		time_diff = (((long)jiffies_now - (long)smi_info->last_timeout_jiffies)
> +		     * SI_USEC_PER_JIFFY);
> +		smi_event_handler(smi_info, time_diff);
> +		schedule_timeout_uninterruptible(1);
> +	}
> +}
> +
>  static void shutdown_smi(void *send_info)
>  {
>  	struct smi_info *smi_info = send_info;
> @@ -2187,16 +2201,13 @@ static void shutdown_smi(void *send_info)
>  	 * in the BMC.  Note that timers and CPU interrupts are off,
>  	 * so no need for locks.
>  	 */
> -	while (smi_info->curr_msg || (smi_info->si_state != SI_NORMAL)) {
> -		poll(smi_info);
> -		schedule_timeout_uninterruptible(1);
> -	}
> +	wait_msg_processed(smi_info);
> +
>  	if (smi_info->handlers)
>  		disable_si_irq(smi_info);
> -	while (smi_info->curr_msg || (smi_info->si_state != SI_NORMAL)) {
> -		poll(smi_info);
> -		schedule_timeout_uninterruptible(1);
> -	}
> +
> +	wait_msg_processed(smi_info);
> +
>  	if (smi_info->handlers)
>  		smi_info->handlers->cleanup(smi_info->si_sm);
>  
> -- 
> 2.30.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
