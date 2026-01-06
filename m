Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD6CCF8ED8
	for <lists+openipmi-developer@lfdr.de>; Tue, 06 Jan 2026 15:59:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lrYohdli06g+VunMUJsrIq+2smAo9CVyQXjX+BrKAbM=; b=iEXZexVKLT/jqoiUvFpJGakzjB
	Mv1y4rsFv7xIyu//owyBEA9gmMHT7+kt+X7ZpOZbI6gBzpn2TPHYS6MHQLPrGeHP0GzmcwNgmOijI
	gYEBlXOXB6YWlQP4b7x8SqRoTVZnCerx19NzKxu7QmCbS+1v4Af07y9KqEUs1sFbFjqI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vd8Wz-0003yW-PS;
	Tue, 06 Jan 2026 14:59:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vd8Wy-0003yQ-7m
 for openipmi-developer@lists.sourceforge.net;
 Tue, 06 Jan 2026 14:59:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j27M04guRgN3b93l/ZrktzrEGQOPQV9RZBlmWwrmcAA=; b=KALQyZtgNE6GvEXq2r+DC7G72R
 T/0JXMgRXmLoePV2TsImdpDc4mpjGEhHlM50wzpK09BFqKXX0Jw6l1XqC7PhvM9kcWdl/DG5z1Crz
 mGKtFIWFy48M6niYIpR8BkJG8R/LCap1FVv3ozmpReYCT8IQXqEpNznnNY2xGaGdRCec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j27M04guRgN3b93l/ZrktzrEGQOPQV9RZBlmWwrmcAA=; b=bzCfDlAsfIw9+/zHJ86xj5FFJr
 lZ307cpwj7lvA3igr6HCBXcaGq/bYW7fc4HVEybmIoUgm48EigQzm8N5L+U1ICYYHxhMRhINKp8xO
 KY42qBpx+UiO0QXDKtjDKLJQrCTyKldgB2EtmaZIpJbtlCMKkVMTJfiQ2lKvVufMilBo=;
Received: from mail-oa1-f51.google.com ([209.85.160.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vd8Wx-0003AC-Lg for openipmi-developer@lists.sourceforge.net;
 Tue, 06 Jan 2026 14:59:32 +0000
Received: by mail-oa1-f51.google.com with SMTP id
 586e51a60fabf-3f0cbfae787so732066fac.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 06 Jan 2026 06:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1767711561; x=1768316361; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=j27M04guRgN3b93l/ZrktzrEGQOPQV9RZBlmWwrmcAA=;
 b=G0HLEXN8kNUJJP+OPu8ILBzQjmoZeyUc1teQbPxLkxF9AKmzfsJeX74Dm2jFk+kcAo
 hbgpXE00d57kvq/cSnr2dWvfNDF/C+depgGLYNvEnwYIKN12t9SNoM0QjDSKqLcuQZUd
 fFekpRcJrQ13Rq+9EICeBlg1Iubv65k62aVF+gfTygx+fuhinv701thCQ9+4frgIbbjw
 Zs28oWF98EAyp25JIoLoHHAsksSVIBiq8WxgT91d4jrlWbbGgPcj7M7PkZmuUIxQAx9E
 rrxcVQKRm+LnHQEH9H0//jr/q7ZgMRf8kQV+ozw9nFO7UfFYvFIXHUNhUhU8ta73UwCz
 eqTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767711561; x=1768316361;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=j27M04guRgN3b93l/ZrktzrEGQOPQV9RZBlmWwrmcAA=;
 b=BvS2AX8AM6FUo8xGryNvwkLWVMZJZMk/lSg+mSFU9XfjcL1j4pG3X2HHI2cfHykQsc
 v/RQtXXaPk59GSLKJo48lKV2AmkoDtXbSLdvXNfL1xgn/FUjdwXxq59P3vGPPzwVoSxt
 DGLV3M/jtu4CAqC+WnAl1smSYBHksZX3gY9Fz3GFQEZZS6aeypwrySXo/BXyVvd5971b
 fA/F61YZZC9HRgc6OBkQs3O4h5hQB6ubQidxLB3//+PAtIddg4tbIU3hKQKkrG6QLv4m
 SwXnORc2gEibzo4DP42gns4sa7/oM8rVMqvxkKUZ1Dg4UcEBO+gmIPaticbFJmic+mjI
 UrBA==
X-Gm-Message-State: AOJu0YzJxvExkXpCKLXnQElQOmjuNi+wGeIW0yDdzx43+LdKnkfhQBDv
 oMYOURi41G/1b/tEOdz+tMUh0LWkbZJp5v+jTe3R74yMyE5VIHALRB2VCS9Joxte1bi/GBLby7Z
 n6xcD01s=
X-Gm-Gg: AY/fxX77pUMGikSX/DDBHY4bYsCyH+kQEamFtCHGe5vcWwjGes30pEDKkGtRgz/YrHc
 qOFJY9mNMygDT0TcimAREhFSzOxHlmanm4TdeUchhQfK22aaAIzkBvN6GCWvs4H33w+o4FNmNIs
 uZrBcYDTtZSGTXS5bSFJFGZiwsUU4KtZyI7t8vJMFHZnsBuQH10Rqrirhf5hpvfmErKB+57sobE
 9amKeMvwVF3r0ST5UT7PesnW7bB0SzqrO3Ih0WDmT1TaGx2nF99P0vwb2u+mTE+/dkosbVg9Sye
 uAvbwE/5l5hG/dgoZrMYzHx5UoV7V2LXL0id4YvYVdcKAgX3fYrKYBbvPBcn4DXNNRu3Gb+NNUM
 LwIpp9X2JugImTycQobSPGThAFR2T8LklCsLDhetl3aBjf5JxKzjW95rZOM7SRrmQ1zUj6vvZtj
 qshrctHq2QpXHpYg==
X-Google-Smtp-Source: AGHT+IE1WjCHG3fESH3NjdI+SoUg4eYR+wyvZ3zs/ptBLJ5dY8c4ubL3rEdgPy3tnbGC9ls49l2R6w==
X-Received: by 2002:a05:6870:238f:b0:3ec:3d37:87da with SMTP id
 586e51a60fabf-3ffa09ad820mr1622176fac.3.1767711560885; 
 Tue, 06 Jan 2026 06:59:20 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:a1f4:7241:8e96:330d])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-3ffa4deae43sm1442404fac.1.2026.01.06.06.59.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jan 2026 06:59:20 -0800 (PST)
Date: Tue, 6 Jan 2026 08:59:17 -0600
From: Corey Minyard <corey@minyard.net>
To: Michal Berger <michallinuxstuff@gmail.com>
Message-ID: <aV0jRTeJXmSlNhtk@mail.minyard.net>
References: <20260106134921.70493-1-michallinuxstuff@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260106134921.70493-1-michallinuxstuff@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jan 06, 2026 at 02:49:21PM +0100,
 Michal Berger wrote:
 > Currently all relevant SDR cmds seems to be fully supported, some > are
 processed even when corresponding bit is not set (e.g. the > IP [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.51 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vd8Wx-0003AC-Lg
Subject: Re: [Openipmi-developer] [PATCH] [RFC] lanserv/bmc: Support all SDR
 operations by default
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jan 06, 2026 at 02:49:21PM +0100, Michal Berger wrote:
> Currently all relevant SDR cmds seems to be fully supported, some
> are processed even when corresponding bit is not set (e.g. the
> IPMI_SDR_DELETE_SDR_SUPPORTED cmd) in the Operation Support field.
> 
> With that in mind it feels reasonable to expect from the main
> SDR to have all the Operation Support bits set (including the
> update operations (modal, non-modal)).
> 
> The added benefit is that ipmitool can now process the add/delete
> timestamps and print them out (instead of just considering them
> as "NA").

Applied, thank you.

-corey

> 
> Signed-off-by: Michal Berger <michallinuxstuff@gmail.com>
> ---
>  lanserv/bmc.c | 2 +-
>  lanserv/bmc.h | 2 ++
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/lanserv/bmc.c b/lanserv/bmc.c
> index e72901ba..2eea26dd 100644
> --- a/lanserv/bmc.c
> +++ b/lanserv/bmc.c
> @@ -1215,7 +1215,7 @@ ipmi_emu_add_mc(emu_data_t    *emu,
>      mc->sel.time_offset = 0;
>      mc->main_sdrs.time_offset = 0;
>      mc->main_sdrs.next_entry = 1;
> -    mc->main_sdrs.flags |= IPMI_SDR_RESERVE_SDR_SUPPORTED;
> +    mc->main_sdrs.flags |= IPMI_SDR_ALL_OPERATIONS_SUPPORTED;
>      for (i=0; i<4; i++) {
>  	mc->device_sdrs[i].time_offset = 0;
>  	mc->device_sdrs[i].next_entry = 1;
> diff --git a/lanserv/bmc.h b/lanserv/bmc.h
> index fdaf8e51..1881af31 100644
> --- a/lanserv/bmc.h
> +++ b/lanserv/bmc.h
> @@ -388,6 +388,8 @@ void iterate_sdrs(lmc_data_t *mc,
>  #define IPMI_SDR_PARTIAL_ADD_SDR_SUPPORTED		(1 << 2)
>  #define IPMI_SDR_RESERVE_SDR_SUPPORTED			(1 << 1)
>  #define IPMI_SDR_GET_SDR_ALLOC_INFO_SDR_SUPPORTED	(1 << 0)
> +/* Includes update support bits (modal, non-modal) */
> +#define IPMI_SDR_ALL_OPERATIONS_SUPPORTED		0x6f
>  
>  void picmg_led_set(lmc_data_t *mc, sensor_t *sensor);
>  void set_sensor_bit(lmc_data_t *mc, sensor_t *sensor, unsigned char bit,
> -- 
> 2.43.0
> 
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
