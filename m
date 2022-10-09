Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA8F5F8ACA
	for <lists+openipmi-developer@lfdr.de>; Sun,  9 Oct 2022 13:03:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ohU60-0004ob-Nj;
	Sun, 09 Oct 2022 11:03:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1ohU5z-0004oU-48
 for openipmi-developer@lists.sourceforge.net;
 Sun, 09 Oct 2022 11:03:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9dbdT1fyoxz0ZKUiKRzaIkaLuVSiAy7vPSgmI6IuHfs=; b=H9j5D32EsVxY1gdpt+0QhaOnCw
 MGqjPUPKy6MaKUlDEEBT0PT0GtpUocM71A3XtvKgPUxCnX7k8bVvhVm1xYv4Eg21/a7YiP2xtuOJq
 wwS9tkVjVf4srhiSqKK3p6NXrCay/y2M6Ff/RXecAkoy0EQPp7vBkH3onKB3uB532BXw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9dbdT1fyoxz0ZKUiKRzaIkaLuVSiAy7vPSgmI6IuHfs=; b=K6/RdtIEflOlUV4lC7pMPl9Wv9
 E4fOrXDWR0KiLOKxEFL+dMJDSx7AvLwrRcwE1+qA5INMsmqt/7oA2Q3LbOcbxbSSe7Sq9eiRqgGBB
 fJoda2iyXpNxv3BqLITBmMw8NgVIgfg1Qmo2zbUnA3DlAEa5RDr8yvkve1ywDn0NfexM=;
Received: from mail-qk1-f182.google.com ([209.85.222.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohU5v-0008Sv-1p for openipmi-developer@lists.sourceforge.net;
 Sun, 09 Oct 2022 11:03:47 +0000
Received: by mail-qk1-f182.google.com with SMTP id t7so5312684qkt.10
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 09 Oct 2022 04:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9dbdT1fyoxz0ZKUiKRzaIkaLuVSiAy7vPSgmI6IuHfs=;
 b=hAVJxqTJcIA+AGHX33TgPtb8bzhiU68fARX9DrPPM+KUeX86FYvZAX9Ws+retEg541
 t9Qxy3ZcWJvsVwKgAjTiIt8ipMMyGItOm7FOX6lOw19K4bpTAIaJ1PXkkjkK1GAMHjHJ
 fP04lPA5PGSqJtKz6OnbNkM+sFGincMTphkKD3RD0FilYX8ff/7/dSGXOaesbIcWjwmi
 dTwAFZOyX6jd/etxC3UMoGnDru4RewIDfJYOFLHG+jH6mCFD9MWQEKH59xEhT3UCQ5W2
 wiEyPQrkvpRhog5NiaCULO9FdSG3qxBeDNlFDN6ffT+JJqMkVNPuHY3aS26EM6h/DSYG
 n4HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=9dbdT1fyoxz0ZKUiKRzaIkaLuVSiAy7vPSgmI6IuHfs=;
 b=0QB45ZdV3TKJeRcd8JOBsvAeJiZ1buzv3pQXvw+YlqQVctj566bxtsPWWIUXwh3D8i
 RMyCsJZz3aeuKtQlp8pcLKtKVG4kbm1z3KsWwym2bUCm+GApfE+usXVGy7lkhpgXC68M
 9x3E01lYxQI7o8akzPyQoMCUnh0IgvTb2krSD74KdElXb/Yy0z7YQi9O2jaTXIaWoWwM
 T4Q6rKGwYspJe22iDcRach6PdQ9AhAKcOA+YYH+JT8hL0FQVFS1IbjfBQZyZAF7jI98M
 NJCdFjEyamkDD7nT3CSoD8TGKDvCyORKq9vXV9qAtSJgBKVHCqDzGsbUeN6oqQ7KSKc+
 eQ3g==
X-Gm-Message-State: ACrzQf0Jk8a04yjvXLcNpj+khDUHjBaxUVOqU8t2qMBlRYnI4JiJZ17G
 QANdgNakJm+c1ye+fYRaVMRkH2jIjw==
X-Google-Smtp-Source: AMsMyM68qQwKl9WcQ0dRk6zM+DRSBdySH2nkZ5nQtpOz/BmpIq1RIoYhStiNWHLaQxyIX5LzpfFtdQ==
X-Received: by 2002:a05:620a:a9c:b0:6ec:f03:9e5b with SMTP id
 v28-20020a05620a0a9c00b006ec0f039e5bmr3264831qkg.628.1665313416483; 
 Sun, 09 Oct 2022 04:03:36 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 w2-20020a05620a444200b006ce1bfbd603sm7379158qkp.124.2022.10.09.04.03.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Oct 2022 04:03:35 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:2773:7ac8:f513:30ba])
 by serve.minyard.net (Postfix) with ESMTPSA id BDACE180015;
 Sun,  9 Oct 2022 11:03:33 +0000 (UTC)
Date: Sun, 9 Oct 2022 06:03:32 -0500
From: Corey Minyard <minyard@acm.org>
To: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
Message-ID: <Y0KqhKYvf+aKLY1+@minyard.net>
References: <20221009091811.40240-1-zhangyuchen.lcr@bytedance.com>
 <20221009091811.40240-2-zhangyuchen.lcr@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221009091811.40240-2-zhangyuchen.lcr@bytedance.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Oct 09, 2022 at 05:18:09PM +0800, Zhang Yuchen wrote:
 > If you continue to access and send messages at a high frequency (once >
 every 55s) when the IPMI is disconnected, messages will accumula [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.182 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.182 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ohU5v-0008Sv-1p
Subject: Re: [Openipmi-developer] [PATCH v2 1/3] ipmi: fix msg stack when
 IPMI is disconnected
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

On Sun, Oct 09, 2022 at 05:18:09PM +0800, Zhang Yuchen wrote:
> If you continue to access and send messages at a high frequency (once
> every 55s) when the IPMI is disconnected, messages will accumulate in
> intf->[hp_]xmit_msg. If it lasts long enough, it takes up a lot of
> memory.

This is queued for 6.2.  Thanks.  I already had the other two patches
queued.

-corey

> 
> The reason is that if IPMI is disconnected, each message will be set to
> IDLE after it returns to HOSED through IDLE->ERROR0->HOSED. The next
> message goes through the same process when it comes in. This process
> needs to wait for IBF_TIMEOUT * (MAX_ERROR_RETRIES + 1) = 55s.
> 
> Each message takes 55S to destroy. This results in a continuous increase
> in memory.
> 
> I find that if I wait 5 seconds after the first message fails, the
> status changes to ERROR0 in smi_timeout(). The next message will return
> the error code IPMI_NOT_IN_MY_STATE_ERR directly without wait.
> 
> This is more in line with our needs.
> 
> So instead of setting each message state to IDLE after it reaches the
> state HOSED, set state to ERROR0.
> 
> After testing, the problem has been solved, no matter how many
> consecutive sends, will not cause continuous memory growth. It also
> returns to normal immediately after the IPMI is restored.
> 
> In addition, the HOSED state should also count as invalid. So the HOSED
> is removed from the invalid judgment in start_kcs_transaction().
> 
> The verification operations are as follows:
> 
> 1. Use BPF to record the ipmi_alloc/free_smi_msg().
> 
>   $ bpftrace -e 'kretprobe:ipmi_alloc_recv_msg {printf("alloc
>       %p\n",retval);} kprobe:free_recv_msg {printf("free  %p\n",arg0)}'
> 
> 2. Exec `date; time for x in $(seq 1 2); do ipmitool mc info; done`.
> 3. Record the output of `time` and when free all msgs.
> 
> Before:
> 
> `time` takes 120s, This is because `ipmitool mc info` send 4 msgs and
> waits only 15 seconds for each message. Last msg is free after 440s.
> 
>   $ bpftrace -e 'kretprobe:ipmi_alloc_recv_msg {printf("alloc
>       %p\n",retval);} kprobe:free_recv_msg {printf("free  %p\n",arg0)}'
>   Oct 05 11:40:55 Attaching 2 probes...
>   Oct 05 11:41:12 alloc 0xffff9558a05f0c00
>   Oct 05 11:41:27 alloc 0xffff9558a05f1a00
>   Oct 05 11:41:42 alloc 0xffff9558a05f0000
>   Oct 05 11:41:57 alloc 0xffff9558a05f1400
>   Oct 05 11:42:07 free  0xffff9558a05f0c00
>   Oct 05 11:42:07 alloc 0xffff9558a05f7000
>   Oct 05 11:42:22 alloc 0xffff9558a05f2a00
>   Oct 05 11:42:37 alloc 0xffff9558a05f5a00
>   Oct 05 11:42:52 alloc 0xffff9558a05f3a00
>   Oct 05 11:43:02 free  0xffff9558a05f1a00
>   Oct 05 11:43:57 free  0xffff9558a05f0000
>   Oct 05 11:44:52 free  0xffff9558a05f1400
>   Oct 05 11:45:47 free  0xffff9558a05f7000
>   Oct 05 11:46:42 free  0xffff9558a05f2a00
>   Oct 05 11:47:37 free  0xffff9558a05f5a00
>   Oct 05 11:48:32 free  0xffff9558a05f3a00
> 
>   $ root@dc00-pb003-t106-n078:~# date;time for x in $(seq 1 2); do
>   ipmitool mc info; done
> 
>   Wed Oct  5 11:41:12 CST 2022
>   No data available
>   Get Device ID command failed
>   No data available
>   No data available
>   No valid response received
>   Get Device ID command failed: Unspecified error
>   No data available
>   Get Device ID command failed
>   No data available
>   No data available
>   No valid response received
>   No data available
>   Get Device ID command failed
> 
>   real        1m55.052s
>   user        0m0.001s
>   sys        0m0.001s
> 
> After:
> 
> `time` takes 55s, all msgs is returned and free after 55s.
> 
>   $ bpftrace -e 'kretprobe:ipmi_alloc_recv_msg {printf("alloc
>       %p\n",retval);} kprobe:free_recv_msg {printf("free  %p\n",arg0)}'
> 
>   Oct 07 16:30:35 Attaching 2 probes...
>   Oct 07 16:30:45 alloc 0xffff955943aa9800
>   Oct 07 16:31:00 alloc 0xffff955943aacc00
>   Oct 07 16:31:15 alloc 0xffff955943aa8c00
>   Oct 07 16:31:30 alloc 0xffff955943aaf600
>   Oct 07 16:31:40 free  0xffff955943aa9800
>   Oct 07 16:31:40 free  0xffff955943aacc00
>   Oct 07 16:31:40 free  0xffff955943aa8c00
>   Oct 07 16:31:40 free  0xffff955943aaf600
>   Oct 07 16:31:40 alloc 0xffff9558ec8f7e00
>   Oct 07 16:31:40 free  0xffff9558ec8f7e00
>   Oct 07 16:31:40 alloc 0xffff9558ec8f7800
>   Oct 07 16:31:40 free  0xffff9558ec8f7800
>   Oct 07 16:31:40 alloc 0xffff9558ec8f7e00
>   Oct 07 16:31:40 free  0xffff9558ec8f7e00
>   Oct 07 16:31:40 alloc 0xffff9558ec8f7800
>   Oct 07 16:31:40 free  0xffff9558ec8f7800
> 
>   root@dc00-pb003-t106-n078:~# date;time for x in $(seq 1 2); do
>   ipmitool mc info; done
>   Fri Oct  7 16:30:45 CST 2022
>   No data available
>   Get Device ID command failed
>   No data available
>   No data available
>   No valid response received
>   Get Device ID command failed: Unspecified error
>   Get Device ID command failed: 0xd5 Command not supported in present state
>   Get Device ID command failed: Command not supported in present state
> 
>   real        0m55.038s
>   user        0m0.001s
>   sys        0m0.001s
> 
> Signed-off-by: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
> ---
>  drivers/char/ipmi/ipmi_kcs_sm.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_kcs_sm.c b/drivers/char/ipmi/ipmi_kcs_sm.c
> index efda90dcf5b3..ecfcb50302f6 100644
> --- a/drivers/char/ipmi/ipmi_kcs_sm.c
> +++ b/drivers/char/ipmi/ipmi_kcs_sm.c
> @@ -122,10 +122,10 @@ struct si_sm_data {
>  	unsigned long  error0_timeout;
>  };
>  
> -static unsigned int init_kcs_data(struct si_sm_data *kcs,
> -				  struct si_sm_io *io)
> +static unsigned int init_kcs_data_with_state(struct si_sm_data *kcs,
> +				  struct si_sm_io *io, enum kcs_states state)
>  {
> -	kcs->state = KCS_IDLE;
> +	kcs->state = state;
>  	kcs->io = io;
>  	kcs->write_pos = 0;
>  	kcs->write_count = 0;
> @@ -140,6 +140,12 @@ static unsigned int init_kcs_data(struct si_sm_data *kcs,
>  	return 2;
>  }
>  
> +static unsigned int init_kcs_data(struct si_sm_data *kcs,
> +				  struct si_sm_io *io)
> +{
> +	return init_kcs_data_with_state(kcs, io, KCS_IDLE);
> +}
> +
>  static inline unsigned char read_status(struct si_sm_data *kcs)
>  {
>  	return kcs->io->inputb(kcs->io, 1);
> @@ -270,7 +276,7 @@ static int start_kcs_transaction(struct si_sm_data *kcs, unsigned char *data,
>  	if (size > MAX_KCS_WRITE_SIZE)
>  		return IPMI_REQ_LEN_EXCEEDED_ERR;
>  
> -	if ((kcs->state != KCS_IDLE) && (kcs->state != KCS_HOSED)) {
> +	if (kcs->state != KCS_IDLE) {
>  		dev_warn(kcs->io->dev, "KCS in invalid state %d\n", kcs->state);
>  		return IPMI_NOT_IN_MY_STATE_ERR;
>  	}
> @@ -495,7 +501,7 @@ static enum si_sm_result kcs_event(struct si_sm_data *kcs, long time)
>  	}
>  
>  	if (kcs->state == KCS_HOSED) {
> -		init_kcs_data(kcs, kcs->io);
> +		init_kcs_data_with_state(kcs, kcs->io, KCS_ERROR0);
>  		return SI_SM_HOSED;
>  	}
>  
> -- 
> 2.30.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
