Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8714BCE59D9
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Dec 2025 01:31:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xiNwQgujAzOfFfJQAWBdnu7qndNlon81VGTiYJle568=; b=cLD64Pmx9uxCVeUYJbTE/BKZDA
	N/RsgbNzlUk1NgEHqU54tI8xn/BWNAMdGPX49b4EnCtmhIH9+yNDtZ/6EvzDzlLj9NqRSZlngvZWi
	mJsJQnuTAL/iPgJpBVfvbkvxFRY/yAWT/4BTEjkyR8a7IpHdIBl7hTwXp1KIBp1JUm8M=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1va1AE-0002oS-6g;
	Mon, 29 Dec 2025 00:31:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1va1AB-0002oJ-MU
 for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Dec 2025 00:31:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sLiVKMn2eNh+FzJag2ocvXcywijJF+F9Wvcrbo0vSQA=; b=AKQyRorewgJ7jIZqPlok2bs0Xa
 DOZrY+g+SlFTrDTOD2Hbf8xSbFStAac75r0oDEX184YMnJ8gbm5r6NJEGlAk7RVK9FcAKg/P8cioE
 +07quaS52XTFUlXT7UvWUs0kI5+1HPNkAUDQVcFrA27vqh4s+wQevpEIF4SSloQhMpGM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sLiVKMn2eNh+FzJag2ocvXcywijJF+F9Wvcrbo0vSQA=; b=deyFEmGT+GO1Nmw7BHR/oeKpXK
 XA1n5cCAD5wXzi3fkNjwIWKiSGcYs/VPpmk3L/qYdohhvRwp82QyvgWpybY2V/DnliDv/oJhbbjDW
 Ys2kWXFaj0ez+hX58T8ywmAW8WBT3XqgsyIi6Agwo04D57chNOIcTj+5+TWg+mFyN1Hk=;
Received: from mail-qk1-f179.google.com ([209.85.222.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1va1AA-0000w0-UM for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Dec 2025 00:31:07 +0000
Received: by mail-qk1-f179.google.com with SMTP id
 af79cd13be357-8b22b1d3e7fso866497685a.3
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 28 Dec 2025 16:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1766968261; x=1767573061; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sLiVKMn2eNh+FzJag2ocvXcywijJF+F9Wvcrbo0vSQA=;
 b=ExZ/5CyJgeVVoE98KitH8IUFQVGT5qxbGOlyK6PBzNdq12qfx7OW3vs4eKu4cGwTxv
 8TbcSb5zjLdvD4PmyeR6SLl6kmT4ls1eONPlhdT/j4AjjvCqtr5E0K20v3oTgQkWCo2H
 NvnXVbNpYcMeGrJ+ieYFbBu1apAYF+otrIEeoaZ0tTyYb9cVcuFqBDL/No+IHoBeCgDc
 lV88SAyP0lVBsFFzFqNOOxq2b0CNZ9xqdKeUEbjshAslVw52+dE1CW2QaaDkH5ORb/JR
 viE98n8BVUXgvZQA3MqVkot1cIKsPQwAcaIIsdxKBqOB/6QXFjfBWOvBZC7j/V/SuoGN
 fg/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766968261; x=1767573061;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=sLiVKMn2eNh+FzJag2ocvXcywijJF+F9Wvcrbo0vSQA=;
 b=U85QzCJhgi60AMO4QDh3iOQNEd2iWPjtHdC5q2nwugABJO+ctTijPHvg6i0vpQi+Ai
 magXVRzhYdLGeO+uBAkdp382lSuAlf0sxFxQaUOEKEUazCspJ47P0GWOiRFFZUFooN/F
 5zfvSCnUAkORoY/gU6w5pvKlYtSkNoNidQaWlmgk+xp7vQ6F5wXxwpEvgc5bMf6uXrGS
 PR5uCqQP1jzYNTwLeX7zUrIQnSQ4Fc/fK5VRUb1eWIk68Wsj2dRwZnVPUlEojObT2pd7
 INLfeOSkmMYgQabyHPMLhCQsSB8QJl6klRcvdoUEsi/ifblcUYA3Xx79S6uFWP00G8IQ
 20bA==
X-Gm-Message-State: AOJu0YyhTOBHGvedO5m1WTfT5249CTAsww6aYSB4Uebi3FOHys/ucNeb
 Hea8ASuEPeHCoC/IQE/DOvkV07gFHZ2WafVXnRdbRp9oh1k9omrrQocAUg1LenHuvE7tltN+a5d
 S6Cx6YiY=
X-Gm-Gg: AY/fxX6aXUCB2NVtqpmiA18S5p9r0Vv0nnCqbzxmS8iNbXq6VWWH2D4eocOCESp1+B4
 GYecNzWyhRZsiuw8TZ2wDKSoLS+cS/VEZwMY7rnEen95X4C38AHb7HXozn2q3/XnBoviAAfdP4t
 rhg6evaLLdBPmpG4NJ0pfSkF3kbhcHnVX1h0ZwlTtdEkLzxbPPuR+GsXdVjYey0meMYWCbEO/JD
 U7O+w4vYzLK/Om/YmR/HnAmEyGnTW+BTEyveFpbk7Ucpgp8vg+6nHs9t8Rr2UiH0DNYs1bpxz3W
 SVn50EBhiRh21jK8TFeCi1N8tzpmf5uhassQNiZCWUP0MCqJQhDJE/RLiqv6mkZhmyVHETIV7j+
 zeTGJq1RCUN6dwGCONHEpS8eJdjX34TBR7gt0Jt+7GD9daQOEXSGhbVtm3z005d0172WE932LPU
 Undv1M/M0zi2FT7ME2XbXm0vA=
X-Google-Smtp-Source: AGHT+IHUpBGjpkzq3PCO4YcuFTMg6iYNw05ZhvSlcpdPCiq2LN/2RadvqtziaYUHqbEZEPkvZcyf2w==
X-Received: by 2002:a05:6820:827:b0:659:9a49:8f93 with SMTP id
 006d021491bc7-65d0e9fe02bmr12731224eaf.12.1766967891483; 
 Sun, 28 Dec 2025 16:24:51 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:b9db:128:b183:1113])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-65d0f3f8807sm17969061eaf.3.2025.12.28.16.24.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Dec 2025 16:24:50 -0800 (PST)
Date: Sun, 28 Dec 2025 18:24:44 -0600
From: Corey Minyard <corey@minyard.net>
To: Michal Berger <michallinuxstuff@gmail.com>
Message-ID: <aVHKTMfSgFnBzkyA@mail.minyard.net>
References: <CACosJgzCym0fGOh4_itgnV5Dk+vOqk=Xy+dtvbmCGcpKCFY5XA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACosJgzCym0fGOh4_itgnV5Dk+vOqk=Xy+dtvbmCGcpKCFY5XA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Dec 28, 2025 at 10:38:03PM +0100,
 Michal Berger wrote:
 > Right now channel number is being unconditionally included in the >
 Generator
 ID field. However, as per the SEL Event Records it should [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.179 listed in wl.mailspike.net]
X-Headers-End: 1va1AA-0000w0-UM
Subject: Re: [Openipmi-developer] [PATCH] lanserv/bmc_sensor: Adjust
 Generator ID
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

On Sun, Dec 28, 2025 at 10:38:03PM +0100, Michal Berger wrote:
> Right now channel number is being unconditionally included in the
> Generator ID field. However, as per the SEL Event Records it should
> remain 0h depending on what medium/interface the event msg is
> received over.

You are correct, there was a lot to be desired in this funciton.

There were, unfortunately, a lot of issues with this patch.

First your mailer is munging up the patches pretty badly.  I have to
hand apply them, which is a big pain.

On the chagne itself, you still weren't handling all cases for the
address in the SEL Event Records.

And for an IPMB messages, the wrong data was copied and it was indexing
beyond the end of the message data when filling out the data.

I've heavily modified the patch and pushed it up.  If you could check
it, that would be great.

Thanks,

-corey

> 
> So have this:
> 
> # ipmitool sel list
>  SEL has no entries
>  # ipmitool event 1
>  Sending SAMPLE event: Temperature - Upper Critical - Going High
>  # ipmitool sel get 0x1 | grep "Generator ID"
>   Generator ID          : 0041
> 
> Instead of:
> 
>  # ipmitool event 1
>  Sending SAMPLE event: Temperature - Upper Critical - Going High
>  # ipmitool sel get 0x2 | grep "Generator ID"
>   Generator ID          : f041
> 
> As we are at it adjust the msg length of the platform event - as per the
> Table 29-4, Platform Event (Event Message) Command, the 8 bytes is
> a msg length dedicated for the System Interface which must include
> the Generator ID. Case in point, when the event is sent over the
> LAN channel, ipmi_sim rejects it due to invalid length of the
> request (e.g. ipmitool does not include the extra software ID in the
> event data hence sending only 7 bytes):
> 
>  $ ipmitool -Ilanplus -Hlocalhost -p4242 -UXXXXX -PXXXXX event 1
>  Sending SAMPLE event: Temperature - Upper Critical - Going High
>  Platform Event Message command failed: Request data length invalid
> 
> Signed-off-by: Michal Berger <michallinuxstuff@gmail.com>
> ---
> lanserv/bmc_sensor.c | 22 +++++++++++++++++++++-
> 1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/lanserv/bmc_sensor.c b/lanserv/bmc_sensor.c
> index be6c537f..cc21bf9c 100644
> --- a/lanserv/bmc_sensor.c
> +++ b/lanserv/bmc_sensor.c
> @@ -58,6 +58,7 @@
> #include <sys/stat.h>
> #include <fcntl.h>
> 
> +#include <OpenIPMI/ipmi_mc.h>
> #include <OpenIPMI/ipmi_err.h>
> #include <OpenIPMI/ipmi_msgbits.h>
> #include <OpenIPMI/ipmi_bits.h>
> @@ -113,16 +114,35 @@ handle_platform_event(lmc_data_t    *mc,
>                      void          *cb_data)
> {
>     unsigned char sel_data[13];
> +    uint8_t msg_length = 7; // IPMB MESSAGING
> 
> -    if (check_msg_length(msg, 8, rdata, rdata_len))
> +    if (msg->orig_channel->channel_num == 15 ||
> +               msg->orig_channel->medium_type == IPMI_CHANNEL_MEDIUM_SYS_INTF)
> +       msg_length = 8; // SYSTEM INTERFACE MESSAGING
> +
> +    if (check_msg_length(msg, msg_length, rdata, rdata_len))
>        return;
> 
>     sel_data[0] = 0;
>     sel_data[1] = 0;
>     sel_data[2] = 0;
>     sel_data[3] = 0;
> +    /*
> +       From Table 32-1, SEL Event Records:
> +         Byte 1
> +           [7:1] - 7-bit I2C . Slave Address, or 7-bit system software ID
> +           [0] 0b = ID is IPMB Slave Address
> +               1b = system software ID
> +         Byte 2
> +          [7:4] - Channel number. Channel that event message was
> received over. 0h if the
> +                  event message was received via the system
> interface, primary IPMB, or
> +                  internally generated by the BMC.
> +    */
>     sel_data[4] = msg->data[0];
>     sel_data[5] = msg->orig_channel->channel_num << 4;
> +    if (msg->orig_channel->channel_num == 15 ||
> +               msg->orig_channel->medium_type == IPMI_CHANNEL_MEDIUM_SYS_INTF)
> +       sel_data[5] = 0;
>     sel_data[6] = msg->data[1];
>     sel_data[7] = msg->data[2];
>     sel_data[8] = msg->data[3];
> --
> 2.43.0
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
