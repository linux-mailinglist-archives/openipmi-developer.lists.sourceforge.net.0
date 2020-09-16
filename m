Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A69B26C376
	for <lists+openipmi-developer@lfdr.de>; Wed, 16 Sep 2020 16:01:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kIY0E-0001gF-T8; Wed, 16 Sep 2020 14:01:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kIY0E-0001g7-3h
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Sep 2020 14:01:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EdS5nQ5v/xeh8lWTIsK7FEhg6EkIDhCz0UEb2qA1xTo=; b=ZwNHUSdr+0q+M1I3ppDqe8jZvq
 oj6+DRdQtXxyEbWdDsVMpMGdhNio1SOmReUAPKwtgwAipEKIUue2e/DS6ESuwAcMVKFlGi8TPhVl8
 0qPsUlZtGKUf6tDDqOMb4+M+/MpPT87BgmSHQVHrbtUzuHC/AC/Pr8ofvlP0F+sEYO3o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EdS5nQ5v/xeh8lWTIsK7FEhg6EkIDhCz0UEb2qA1xTo=; b=HtDp0gkycHuUYeNxg+erKXox33
 EwMa6vw6MZpZBFjv7ZrM6yx/wGrlat2MqLS3O95VP3wsA3AMZromo1Gyw/1H9VLxM1cErqPfu9YDK
 cQB92ytfts9E+BhmXBBmYE8Pa2pVyfh2BSgZhNDH2Lx1/lDQHlmYiH/7kLykxNDhZ9Q4=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kIY07-00BSZw-Uw
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Sep 2020 14:01:42 +0000
Received: by mail-ot1-f65.google.com with SMTP id q21so1160537ota.8
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 16 Sep 2020 07:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EdS5nQ5v/xeh8lWTIsK7FEhg6EkIDhCz0UEb2qA1xTo=;
 b=P2faPbCd45c1ANCgbYMRhk8ZIX4JIOUt1ohimg7dJAeIRu/AZ4pynXdrz37ESN+r0N
 gJA9h3pTOG6wj6o7/V/YOAMBg/gFpUJBVozZtMgbwWi5Jn7c7CMryfnJjy+lTzU0UyWA
 NaZPgCaK3re6VrrvDdYjP4u3M3Tgs3vryVmF8gkA5RllFYWWI93FxL394j6NcNFQ4o5P
 pyFYjGQl/5Sx5cLG1b4hzdklVdb8txl1GT3r9Kf6wAgrtMo+lzHEjvZ9VlnV965S559S
 bZ2ipiOA8dDIBWd5g7KLb0HI4JUXrCM5d40ln+MaGraEALUy+BOa8ZofMgegwZac08ZI
 vfKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=EdS5nQ5v/xeh8lWTIsK7FEhg6EkIDhCz0UEb2qA1xTo=;
 b=SY8oFiAssE1V+cqG8D8/szVg1C9krucZWQNr6KK2ajF/QNCLfG4CtKrzCswi6unkMs
 K0p8h9qttfvj3j3XMVZqj28V7qR5bkaLN47y5OSAl43uDMIhgg2m92UFhNAgXYEvCuS0
 7RQKi20q4LEXVFpfwZVSWt604U1mHBMh8zmfUD58Mn6sMrX7IXkAYImTiMopdf41vVmf
 IcA53sd2kDmc0YnQB6ChOy+l4U9cRnfiCkA70mjKdKcoY1XtKvTJqnUHh+d76KPaKkoy
 90q6nI45CB6ujffdHj1NmaWwm0yYzJBJ153LfQfrG4AlSZO4tMjdbhhjnaOKmBHSW7ff
 9XYA==
X-Gm-Message-State: AOAM531i3fXLKyoWhgPDdp8pgThHTzu8oyaOSO0XshCPvroVC0UdK77x
 pX5DQS4LZu6qO8ox5Jllvg==
X-Google-Smtp-Source: ABdhPJw8Abo9MErveklySPwOJUzlHTs3vYIAvUy96hCIMl24MK4msxSt++HevLQAhCUvuFiiQSvnSA==
X-Received: by 2002:a9d:6491:: with SMTP id g17mr15551738otl.326.1600264890279; 
 Wed, 16 Sep 2020 07:01:30 -0700 (PDT)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id z16sm8149785oth.43.2020.09.16.07.01.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Sep 2020 07:01:29 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:ac90:c835:eb77:dac0])
 by serve.minyard.net (Postfix) with ESMTPSA id A7B2E181C2F;
 Wed, 16 Sep 2020 14:01:27 +0000 (UTC)
Date: Wed, 16 Sep 2020 09:01:26 -0500
From: Corey Minyard <minyard@acm.org>
To: Xianting Tian <tian.xianting@h3c.com>
Message-ID: <20200916140126.GE3674@minyard.net>
References: <20200916062129.26129-1-tian.xianting@h3c.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200916062129.26129-1-tian.xianting@h3c.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kIY07-00BSZw-Uw
Subject: Re: [Openipmi-developer] [PATCH] ipmi: add retry in try_get_dev_id()
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Sep 16, 2020 at 02:21:29PM +0800, Xianting Tian wrote:
> Use retry machanism to give device more opportunitys to correctly response
> kernel when we received specific completion codes.
> 
> This is similar to what we done in __get_device_id().

Thanks.  I moved GET_DEVICE_ID_MAX_RETRY to include/linux/ipmi.h since
uapi is for things exported to userspace.  But this is good, it's in my
next tree.

-corey

> 
> Signed-off-by: Xianting Tian <tian.xianting@h3c.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c |  2 --
>  drivers/char/ipmi/ipmi_si_intf.c    | 17 +++++++++++++++++
>  include/uapi/linux/ipmi.h           |  2 ++
>  3 files changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index b9685093e..75cb7e062 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -62,8 +62,6 @@ enum ipmi_panic_event_op {
>  #define IPMI_PANIC_DEFAULT IPMI_SEND_PANIC_EVENT_NONE
>  #endif
>  
> -#define GET_DEVICE_ID_MAX_RETRY	5
> -
>  static enum ipmi_panic_event_op ipmi_send_panic_event = IPMI_PANIC_DEFAULT;
>  
>  static int panic_op_write_handler(const char *val,
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 77b8d551a..beeb705f1 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -1316,6 +1316,7 @@ static int try_get_dev_id(struct smi_info *smi_info)
>  	unsigned char         *resp;
>  	unsigned long         resp_len;
>  	int                   rv = 0;
> +	unsigned int          retry_count = 0;
>  
>  	resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
>  	if (!resp)
> @@ -1327,6 +1328,8 @@ static int try_get_dev_id(struct smi_info *smi_info)
>  	 */
>  	msg[0] = IPMI_NETFN_APP_REQUEST << 2;
>  	msg[1] = IPMI_GET_DEVICE_ID_CMD;
> +
> +retry:
>  	smi_info->handlers->start_transaction(smi_info->si_sm, msg, 2);
>  
>  	rv = wait_for_msg_done(smi_info);
> @@ -1339,6 +1342,20 @@ static int try_get_dev_id(struct smi_info *smi_info)
>  	/* Check and record info from the get device id, in case we need it. */
>  	rv = ipmi_demangle_device_id(resp[0] >> 2, resp[1],
>  			resp + 2, resp_len - 2, &smi_info->device_id);
> +	if (rv) {
> +		/* record completion code */
> +		char cc = *(resp + 2);
> +
> +		if ((cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
> +		    || cc == IPMI_DEVICE_IN_INIT_ERR
> +		    || cc == IPMI_NOT_IN_MY_STATE_ERR)
> +		    && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
> +			dev_warn(smi_info->io.dev,
> +				"retry to get device id as completion code 0x%x\n",
> +				 cc);
> +			goto retry;
> +		}
> +	}
>  
>  out:
>  	kfree(resp);
> diff --git a/include/uapi/linux/ipmi.h b/include/uapi/linux/ipmi.h
> index 32d148309..bc57f07e3 100644
> --- a/include/uapi/linux/ipmi.h
> +++ b/include/uapi/linux/ipmi.h
> @@ -426,4 +426,6 @@ struct ipmi_timing_parms {
>  #define IPMICTL_GET_MAINTENANCE_MODE_CMD	_IOR(IPMI_IOC_MAGIC, 30, int)
>  #define IPMICTL_SET_MAINTENANCE_MODE_CMD	_IOW(IPMI_IOC_MAGIC, 31, int)
>  
> +#define GET_DEVICE_ID_MAX_RETRY		5
> +
>  #endif /* _UAPI__LINUX_IPMI_H */
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
