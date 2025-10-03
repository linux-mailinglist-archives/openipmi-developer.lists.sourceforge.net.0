Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E624CBB75A6
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Oct 2025 17:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ro4myKIX5hKZ2VRSA7jbjK6fswWMWUuuyhlKviFyBUc=; b=aZYX5nMIUstjm1dXLAHyrY/dFU
	ycVY4Y9Rietr89jOCFP4Gzt+dIn1VB3yd7hcB/prezn33tXsk8tuYa4Q0p+tQuQifdiVhSWT3O8Yf
	zowH29uzxifeRNeVClXhbTcwTZZXshZif2oqQ0vWZsFrlHXGr8yFkmhxCoG+BFoEpiCU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v4hwU-0002p2-Nm;
	Fri, 03 Oct 2025 15:43:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1v4hwT-0002ot-40
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Oct 2025 15:43:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tAGtpcOJ2IYN1BCdZDhmCcvLW4pOUHf47FweOs5VSH4=; b=R1q7N+/urKaJ7EcqdppJnesrbo
 eVMyRfHiaTPGFYMsbJ9UoKPPPSJgSXNyOtvBEilYDPxKAargaxWNNN+7ctzlIHRW3aeW2wqm0Oy3C
 ndP1mS8z1ri0au10IBy6MGxfkodL0pSBX1KXBycsd4o8Q9BJ54iXCQ4UnWyhlZ9YSaJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tAGtpcOJ2IYN1BCdZDhmCcvLW4pOUHf47FweOs5VSH4=; b=NWIoBZfn5Jwajc7gyT8rBfD91L
 si8CtzV9Gb4/Y+SvkezP/pNAD123xC2AxOuJkhqH1yPltL/L88s4uR4manyJZWWrBY3ufYxjt+UqE
 UZLC1YNwBi68HW3vFXdTIEefouuww6qcNYA9FH9hbOAs+oMZOhQpyNshmTAPajuNdLos=;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v4hwS-00065d-JO for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Oct 2025 15:43:33 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 46e09a7af769-7b6d6a1e4e4so1472240a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 03 Oct 2025 08:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1759506202; x=1760111002;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tAGtpcOJ2IYN1BCdZDhmCcvLW4pOUHf47FweOs5VSH4=;
 b=IuIJpa2jfqKtXPH60q4gacqow+SwfLWM/KEPD+Bzo6G0CIVkdtfOnsVzUSa9PX0P6/
 WjDJgeSg9cYY/JHxKSHdWaDdC2+5Qjh9rL2oIySdO4kCQdXqhxetflQmB4xvs4ubUKE4
 BGUxXw39+UD7ZP9e2SofkDH8eFROo46yLQJvXWPp7p6mLAB1CEBfpeaWcNFgIVxbTG0B
 X+cosO3VK/yJYjHtSenGw3j5DQVifz30j5Ls3P3pa8B3gqsRhkxXklTUG8ShgeKzACeE
 S+J4P0rX8jNikG9jMH/i2tK45l4wTSHu1MqsKg4R/vDyRT0FxMproJ14nE1eCvvfQUHI
 9Vog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759506202; x=1760111002;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=tAGtpcOJ2IYN1BCdZDhmCcvLW4pOUHf47FweOs5VSH4=;
 b=gbjPYb+PdAe0+xj/7hRRTEcG61dO5HSJa3Yf11OD1yUtOefqDtld1i1aeOTSFVYQ/r
 WI5wNNs19vWynflhq5/Qno3ynxWEy5sr2OIQZJLPyNmmX2Cmf9StnqyV4h8PsAPsOZ4p
 pe+obNsQ/DD1F2R6o6zmAuZnfqkPJYBVxHuU0IHM+DRKyPvJeGPjIshmDOIBdNmmiTR/
 drwm7JLXoieYkEPUW1cZwCm+5X9Douli1pidEelxdAwQpTwW9K8vMWCoqhX3208+2kI1
 cj/AkYI+qClFyOOv3Ak5zpsxoOn7K4e5MJ7971cXXT/C2vNJhfZyhzEEXD0CtuUeZGLk
 YEVQ==
X-Gm-Message-State: AOJu0YyM8wihtFm+2rUavHetwTZ7iQknLaeQLM8YwFn+/zCjZQ3cksYx
 EfQ/VJvZEYEDkQCX+2bdE29EOa+q8aDcFJaNlpI4+tG0KhKO7vSWuIx1hAgAlo8q5X8=
X-Gm-Gg: ASbGnct2iGbUvn9oEufiVnAzgrPkdEFuNq1pLMCre0Q/daohFxOCAR2nWuXCqTMEjrH
 wQ2hXRPpDd0+dbYRseYBlubx/g+Sxwoe7JSeFtav/fs9HcyX5D7+cBOoSuwbXi7f87q3hV6BZ5u
 3HhPuxg6FogeWCWdfTl9VVowleB33yJVIWwijpHeGJxQ4OlPn0biCve+ZchKAh19QKuVXpx3hBr
 vFo0iESd+oHVHSCy494bRWVXL+7Iqw19CD/ucccq3NCO3YFOP3/7/cUJZ4Ou/EkwZyt8sMIZnAf
 1ywlSJHe96VkzGCEDxmZCzlLNGSGGuSNDIS8zRa/dUJEl2vXk2hveyAuNosbnSOF4Iny6Z8BQJy
 pA8n8kWCSk+eRvSWWlUq3JVYYxZYAmPxldPTsr3C55E3UzHR0xazo5/6/8Jlj
X-Google-Smtp-Source: AGHT+IFbJkATFtfDDCaGhZCKFa0SXFgs+2NyZrjUWzowyBwJrBYN44tBdXJMH5ef1Ybjei3cps0Jow==
X-Received: by 2002:a05:6808:218a:b0:43d:28fd:610e with SMTP id
 5614622812f47-43fc173bbf4mr1719340b6e.9.1759506201906; 
 Fri, 03 Oct 2025 08:43:21 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:d469:1917:5c33:260b])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7bf6c8e9987sm1262405a34.12.2025.10.03.08.43.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Oct 2025 08:43:21 -0700 (PDT)
Date: Fri, 3 Oct 2025 10:43:16 -0500
From: Corey Minyard <corey@minyard.net>
To: Jinhui Guo <guojinhui.liam@bytedance.com>
Message-ID: <aN_vFKhMi0tDT2rK@mail.minyard.net>
References: <20250930074239.2353-1-guojinhui.liam@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930074239.2353-1-guojinhui.liam@bytedance.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 30, 2025 at 03:42:36PM +0800, Jinhui Guo wrote:
 > The command "ipmi -b -t" would occasionally fail: > #ipmitool -b 6 -t 0x2c
 raw 0x6 0x01 > Unable to send command: Invalid argument > Unabl [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.44 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v4hwS-00065d-JO
Subject: Re: [Openipmi-developer] [PATCH v2 0/3] ipmi: Close the race
 between __scan_channels() and deliver_response()
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Sep 30, 2025 at 03:42:36PM +0800, Jinhui Guo wrote:
> The command "ipmi -b -t" would occasionally fail:
>   #ipmitool -b 6 -t 0x2c raw 0x6 0x01
>   Unable to send command: Invalid argument
>   Unable to send RAW command (channel=0x6 netfn=0x6 lun=0x0 cmd=0x1)
> 
> The race window between __scan_channels() and deliver_response() causes
> the parameters of some channels to be set to 0.
> 
> Fix the race between __scan_channels() and deliver_response() with the
> following changes.
> 
> 1. Only assign intf->channel_list = intf->wchannels and set
>    intf->channels_ready = true in channel_handler() after all channels_ready
>    have been successfully scanned or after failing to send the IPMI
>    request.
> 2. channel_handler() sets intf->channels_ready to true but no one clears
>    it, preventing __scan_channels() from rescanning channels. When the BMC
>    firmware changes a rescan is required. Allow it by clearing the flag
>    before starting a new scan.
> 3. Channels remain static unless the BMC firmware changes. Skip channel
>    rescan when no BMC firmware update has occurred.
> 
> 
> v1: https://lore.kernel.org/all/20250929081602.1901-1-guojinhui.liam@bytedance.com/
> 
> Changelog in v1 -> v2 (suggested by corey):
>  - Split the fix into three independent patches, each addressing a
>    separate issue.
>  - Clear intf->channels_ready only when the BMC firmware changes.
> 
> Jinhui Guo (3):
>   ipmi: Fix the race between __scan_channels() and deliver_response()
>   ipmi: Fix __scan_channels() failing to rescan channels
>   ipmi: Skip channel scan if channels are already marked ready

I have these queued for 6.18.  I need to re-review them; that will
probably happen later in the cycle; I can't put them in until 6.17-rc1
releases.

Thanks,

-corey

> 
>  drivers/char/ipmi/ipmi_msghandler.c | 24 +++++++++++++++++-------
>  1 file changed, 17 insertions(+), 7 deletions(-)
> 
> -- 
> 2.20.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
