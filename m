Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB52850A4FC
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 Apr 2022 18:05:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nhZJJ-0003zo-Nc; Thu, 21 Apr 2022 16:05:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nhZJH-0003yQ-PU
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Apr 2022 16:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gy5Mr4Xkw0nWQenTM/V7cPlnk9oixh5l2qY9cIcFB80=; b=FjP1M+DKOJG5LSrvmOEIcjpqCH
 0O+STOS7oL0DbUAhUO+NOShduMS+IyjN2dm461tbFJh8EzJitORioXTrALhq+nsX7L9/ojip8cnWt
 S76gsiyCaZmy7KLUZVm/BdgQV0Aidq88brLMNyFICUWa2R9met50Vn6LBLy81TQuwQxU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Gy5Mr4Xkw0nWQenTM/V7cPlnk9oixh5l2qY9cIcFB80=; b=B6aOkoYobCn1EMUyDcC4GCjr7J
 RcIvle1umoVoWQbbLyzwptiRFFXlZlJDuv8DykqrflWwXSbkd+6hPp/nu2IZpwgD/CTistU5oSh22
 7HBjOjXHOHjpRIkf39VsIlwyOtLkbWow7GbmlYtB6beByvsE/LysMwt1UDmeDYlO0JJU=;
Received: from mail-qk1-f175.google.com ([209.85.222.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nhZJB-0005w5-T9
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Apr 2022 16:05:34 +0000
Received: by mail-qk1-f175.google.com with SMTP id q75so3872700qke.6
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 21 Apr 2022 09:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=Gy5Mr4Xkw0nWQenTM/V7cPlnk9oixh5l2qY9cIcFB80=;
 b=pi/G8voGK0cPNA1b/Rr6VJ7C3dQV99G8Nik/zvxyVOgzREcgQC7MD9xz0EVxLY5j0c
 ivezdbe7qV/+yMxw/e6URTJyULm3pEB8i9twf1fR51s6Ek8wEJJIMn8oblyBRW+hx6hC
 4REzdhy+fKBOq4ZObHV03F2Yk3eZ/D87GD5eTSo7l97UsQfW9Rq+XJg5r8pUG/kupaG6
 jVzWYf6YEY2JDdI0CeThJRlf1eET2WVV5eJi95fUltKNWlcg7FDqM/YSJqaowvofMNN8
 aM3iijCdchGN5LpMTZd8RV3gcW9+EUp66DQAzLyHw4hEHqSbMD3i5TQ5PDNotz/kAQZL
 Nhcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=Gy5Mr4Xkw0nWQenTM/V7cPlnk9oixh5l2qY9cIcFB80=;
 b=p+v388e8LnPy4bnfMob13gXc2wQIACaOi1aneO0WD5JIirhh4ajUD7/s/T9MTtFFCB
 nxatIhVSLGmJ4ja22l34MwIPrhyTX5gF0hI3lPGHSBqk9797XgSwfeoEn8CHjZwW3ern
 oHjy/zcidITLhdMw0VspwlurzlY2asdSsRPb1tXq7lWvKfsUGPJgNHa6hEMEimcYA+lZ
 1XQzfMaQPaS2iG7GXrCl3/QUwKL+M2l0l7uZBb+w0J2Oi9ivPEWe3fg+z1WPe6jp4Bgx
 Uuklq9BpbdLqZS3IcwA/y0BA7Es9liUF+OR3ie0AZwN3uXQmEyHMBO8/DPt4QuEtwU3n
 orlw==
X-Gm-Message-State: AOAM532IflEYobcIAEi2Vpu5OCqqbII0xpSUrsGFl6eAWjT7XqKjvc+n
 suZwmRAnwCcMttX8xBjoEQGqbgMSf5bv
X-Google-Smtp-Source: ABdhPJz/7u44W+IRgWJVfcUVdJskycBKqQDsrYenXyQ7fjJunRRBNoKajf9zCm0UYnE5z/br/6jnmA==
X-Received: by 2002:a37:9e47:0:b0:69e:a534:24b5 with SMTP id
 h68-20020a379e47000000b0069ea53424b5mr96977qke.510.1650557123483; 
 Thu, 21 Apr 2022 09:05:23 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 2-20020a05620a06c200b0069ea498aec7sm3078129qky.16.2022.04.21.09.05.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Apr 2022 09:05:23 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:a578:422:b82d:51be])
 by serve.minyard.net (Postfix) with ESMTPSA id 6A697180004;
 Thu, 21 Apr 2022 16:05:22 +0000 (UTC)
Date: Thu, 21 Apr 2022 11:05:21 -0500
From: Corey Minyard <minyard@acm.org>
To: Yu Zhe <yuzhe@nfschina.com>
Message-ID: <20220421160521.GB426325@minyard.net>
References: <20220421150941.7659-1-yuzhe@nfschina.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421150941.7659-1-yuzhe@nfschina.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 21, 2022 at 08:09:41AM -0700, Yu Zhe wrote: >
 remove unnecessary void* type castings. Thanks, queued for next release. -corey
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.175 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nhZJB-0005w5-T9
Subject: Re: [Openipmi-developer] [PATCH] ipmi: remove unnecessary type
 castings
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
Cc: liqiong@nfschina.com, openipmi-developer@lists.sourceforge.net,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Apr 21, 2022 at 08:09:41AM -0700, Yu Zhe wrote:
> remove unnecessary void* type castings.

Thanks, queued for next release.

-corey

> 
> Signed-off-by: Yu Zhe <yuzhe@nfschina.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 6 +++---
>  drivers/char/ipmi/ipmi_ssif.c       | 6 +++---
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index c59265146e9c..6e6aee19c39d 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -2296,7 +2296,7 @@ static int i_ipmi_request(struct ipmi_user     *user,
>  	recv_msg->user_msg_data = user_msg_data;
>  
>  	if (supplied_smi)
> -		smi_msg = (struct ipmi_smi_msg *) supplied_smi;
> +		smi_msg = supplied_smi;
>  	else {
>  		smi_msg = ipmi_alloc_smi_msg();
>  		if (smi_msg == NULL) {
> @@ -3989,7 +3989,7 @@ static int handle_ipmb_direct_rcv_rsp(struct ipmi_smi *intf,
>  	struct ipmi_recv_msg *recv_msg;
>  	struct ipmi_ipmb_direct_addr *daddr;
>  
> -	recv_msg = (struct ipmi_recv_msg *) msg->user_data;
> +	recv_msg = msg->user_data;
>  	if (recv_msg == NULL) {
>  		dev_warn(intf->si_dev,
>  			 "IPMI message received with no owner. This could be because of a malformed message, or because of a hardware error.  Contact your hardware vendor for assistance.\n");
> @@ -4407,7 +4407,7 @@ static int handle_bmc_rsp(struct ipmi_smi *intf,
>  	struct ipmi_recv_msg *recv_msg;
>  	struct ipmi_system_interface_addr *smi_addr;
>  
> -	recv_msg = (struct ipmi_recv_msg *) msg->user_data;
> +	recv_msg = msg->user_data;
>  	if (recv_msg == NULL) {
>  		dev_warn(intf->si_dev,
>  			 "IPMI message received with no owner. This could be because of a malformed message, or because of a hardware error.  Contact your hardware vendor for assistance.\n");
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index f199cc194844..e8ee195a33cf 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1053,7 +1053,7 @@ static void start_next_msg(struct ssif_info *ssif_info, unsigned long *flags)
>  static void sender(void                *send_info,
>  		   struct ipmi_smi_msg *msg)
>  {
> -	struct ssif_info *ssif_info = (struct ssif_info *) send_info;
> +	struct ssif_info *ssif_info = send_info;
>  	unsigned long oflags, *flags;
>  
>  	BUG_ON(ssif_info->waiting_msg);
> @@ -1090,7 +1090,7 @@ static int get_smi_info(void *send_info, struct ipmi_smi_info *data)
>   */
>  static void request_events(void *send_info)
>  {
> -	struct ssif_info *ssif_info = (struct ssif_info *) send_info;
> +	struct ssif_info *ssif_info = send_info;
>  	unsigned long oflags, *flags;
>  
>  	if (!ssif_info->has_event_buffer)
> @@ -1107,7 +1107,7 @@ static void request_events(void *send_info)
>   */
>  static void ssif_set_need_watch(void *send_info, unsigned int watch_mask)
>  {
> -	struct ssif_info *ssif_info = (struct ssif_info *) send_info;
> +	struct ssif_info *ssif_info = send_info;
>  	unsigned long oflags, *flags;
>  	long timeout = 0;
>  
> -- 
> 2.25.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
