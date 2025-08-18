Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40922B2AC41
	for <lists+openipmi-developer@lfdr.de>; Mon, 18 Aug 2025 17:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=27DXGkTJwf8SaoeuLb99gvGmuo/ekGTMDBOX1RL9gxw=; b=YXv+mXrsRQFwrHhIexYQJA9HMt
	ROHCQc/dEZPB9gUpOxLTj+E2wibHtTvGFSV/+g2wCA/X931f1MPqEyhcoq2z+N1iFzZCHYy3PYu8Q
	wCvLdIKH/edt9a7SMm7ORMS2onCe4Db5zMJ7v2vQ1f69eQlrGPu/rNFyOBRT0mqhmryU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uo1ZH-000270-2w;
	Mon, 18 Aug 2025 15:14:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <fred@cloudflare.com>) id 1uo1ZF-00026u-34
 for openipmi-developer@lists.sourceforge.net;
 Mon, 18 Aug 2025 15:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pJVnXpOKhtlkl1TVi/ph9w2E/L47rIuiNz17/FrH2rE=; b=YPp8IdUO5ODkdpFYXD9zGj2E1/
 etsIykA9q/TueUwGcXCy5jUNFwRruR/5j3RPmp964O9kQpQv8mKYZzF0BUeoLET7Ag8LFIne17RIq
 P+cRnJOGxDahTlc2h8vCrU/k4Bt9AU81llUrImp2krcwxec16qdLHdSq4LQhN1TJVYXQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pJVnXpOKhtlkl1TVi/ph9w2E/L47rIuiNz17/FrH2rE=; b=Ljjve+CQOAjQGmNb6RoSPy5VKh
 c0UDLcS7wQkCDLHSH4g7Tw6pasgWFQesbLMkepT3h5rduxiX8hwxJAvkvIIpw5ivxDXbjGuM3g7Ts
 i09T4UiQyK0J+PvyqZMO1ypG0nticFxti8kgFKlKToZo//pSKVp/P33XLeJhTi4+9HuY=;
Received: from mail-il1-f179.google.com ([209.85.166.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uo1ZE-0000wu-Hh for openipmi-developer@lists.sourceforge.net;
 Mon, 18 Aug 2025 15:14:37 +0000
Received: by mail-il1-f179.google.com with SMTP id
 e9e14a558f8ab-3e571d40088so27272805ab.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 18 Aug 2025 08:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1755530071; x=1756134871;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=pJVnXpOKhtlkl1TVi/ph9w2E/L47rIuiNz17/FrH2rE=;
 b=Qust75VhQXZzf+7dPjNtrcdF8Vuh81klccdqjmqbs8PFU42tMBNXMdKQh1prXuQXJX
 GwPgEpDIhlXQ/SMj1V8l+lMAJ2+iA4OfiRWedrYYZy7xkofwnIN5N39X3OG14yBwuZQg
 Chh/AoZx4SLJMIFxaIiwENFseQRIqvlnUMw497lpoBC/blombHpNehihMLyO0i6R45bI
 2mNBnMrC1hV8r0TUPoTuzFIPRlAYZO4CkmoyksZ99w6GzBQqblUvakmASrnhaG6narS0
 KWETB2I5PJIbQJkxHAkbLbhpfytDuIV0OgzYGfW/xv+TXN/D+U5r5Kn0usTYex9B4t+r
 J5Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755530071; x=1756134871;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pJVnXpOKhtlkl1TVi/ph9w2E/L47rIuiNz17/FrH2rE=;
 b=TOvnGeb6MLCiupx+9D5+4SBVIFG/UlyYpWZqvKS0xiBQm0bcaUHo9HgpypcOPhS2vW
 XLKE5cMk7zvynofRClI/lO5BDGhZv2egRVnurfbNli8fzHACSS5+VcicD0V4UtzYQg9r
 AYmRV+gvaGwGiS6mNgvKYIHJ74vaXFgNWzYYTODXYU0fBi+QSHX191G+H1LLiQoB9vNT
 bHCP8lTfr2UjHmZ1mxxT7/JduBurHRF6TtErXVlDye41yjspwG1weM9NmLFwCoOt2EKs
 CyzfNa4ZUiTfSF77OLvxjMbVQ9jgi6SGIkZCelRUHQmXeoW8r8XyPltACoMC6SOq6HV1
 oNfg==
X-Gm-Message-State: AOJu0YzP5OcTLTlENLgZ00b84jHAcq5LFB0/D6FAGmFVeEKfdACm8AOT
 QRGttH0/k/lQXReKMoTPjW2sLwp+0mSpb6jOMCUjz7coYbwhsD3SBgHVu2w/yENSzxI=
X-Gm-Gg: ASbGncu/kI+fzb3VLo8U3Cx9768QUkvs+DpALPi5A9HgCdxgY+4nBwN7zAKwaUjSzc+
 Qve7kinvf1jKM/ZS1QXjrMhZ9CZ0bVxYFvkg4mp1LVVrWzufnhD0TrxayToGci5FHtk3D8f1Zwk
 91Zwlllpl7Y1u79FUoaZx8Eb06PIz1OaN5M6XbZRAs8r+hyxoHMImVu7KRpYYxTUh9WR16tlLKy
 Mae+pu0Sva04CpvI9fglQ7fVhexZVYxfdcd5zxBAR2LhP/3cr06J8+XI1LRvKz727QJ2hHBFVBP
 NDYYNJmp2L+jnTKMRAUS5T/T/5xxf6UiR237318iCsRcU7RL0CispftkvAG+zdwS+S59LjYBsk3
 uDA==
X-Google-Smtp-Source: AGHT+IGD3WCH4r5/BDvKZhnt0hvOa7OtCml84sjjaSqIo8vg5MPK1lE8HmDoADIn5/UJ0sNbJ0LWYg==
X-Received: by 2002:a05:6e02:168e:b0:3e3:fd25:f6a with SMTP id
 e9e14a558f8ab-3e57e8ad57dmr221351925ab.11.1755530070566; 
 Mon, 18 Aug 2025 08:14:30 -0700 (PDT)
Received: from CMGLRV3 ([2a09:bac5:8255:4e6::7d:7d])
 by smtp.gmail.com with ESMTPSA id
 e9e14a558f8ab-3e57e58c3c3sm35249495ab.2.2025.08.18.08.14.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Aug 2025 08:14:30 -0700 (PDT)
Date: Mon, 18 Aug 2025 10:14:28 -0500
To: Corey Minyard <corey@minyard.net>
Message-ID: <aKNDVFTI-UZeNq0Y@CMGLRV3>
References: <20250807230648.1112569-1-corey@minyard.net>
 <aJ-lPAc2bLlvHNa3@CMGLRV3> <aJ_lUYTlrzYnRD-5@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aJ_lUYTlrzYnRD-5@mail.minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 15, 2025 at 08:56:33PM -0500,
 Corey Minyard wrote:
 > On Fri, Aug 15, 2025 at 04:23:08PM -0500, Frederick Lawler wrote: > > Hi
 Corey, > > > > On Thu, Aug 07, 2025 at 06:02:31PM -0500, Corey [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.179 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1uo1ZE-0000wu-Hh
Subject: Re: [Openipmi-developer] [RFC] Patches to disable messages during
 BMC reset
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
From: Frederick Lawler via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Frederick Lawler <fred@cloudflare.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 kernel-team@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Aug 15, 2025 at 08:56:33PM -0500, Corey Minyard wrote:
> On Fri, Aug 15, 2025 at 04:23:08PM -0500, Frederick Lawler wrote:
> > Hi Corey,
> > 
> > On Thu, Aug 07, 2025 at 06:02:31PM -0500, Corey Minyard wrote:
> > > I went ahead and did some patches for this, since it was on my mind.
> > > 
> > > With these, if a reset is sent to the BMC, the driver will disable
> > > messages to the BMC for a time, defaulting to 30 seconds.  Don't
> > > modify message timing, since no messages are allowed, anyway.
> > > 
> > > If a firmware update command is sent to the BMC, then just reject
> > > sysfs commands that query the BMC.  Modify message timing and
> > > allow direct messages through the driver interface.
> > > 
> > > Hopefully this will work around the problem, and it's a good idea,
> > > anyway.
> > > 
> > > -corey
> > > 
> > 
> > Thanks for the patches, and sorry for the delay in response.
> > It's one of _those weeks_. Anyway, I backported the patch series
> > to 6.12, and the changes seem reasonable to me overall. Ran it
> > through our infra on a single node, and nothing seemed to break.
> > 
> > I did observe with testing that resetting BMC via ipmitool on the host
> > did kick out sysfs reads as expected.
> 
> Ok, I took the liberty of adding a "Tested-by" line with your name.  If
> that's not ok, I can pull it out.
>

Not a problem.

> > 
> > Resetting the BMC remotely, was not handled (this seems obvious given the state
> > changes are handled via ipmi_msg handler). Would the BMC send an event
> > to the kernel letting it know its resetting so that case could be
> > handled?
> 
> Unfortunately not.  It's one of the many things that would be nice to
> have...
> 
> In general, dealing with a BMC being reset is a real pain.  They tend to
> do all kinds of different things.  The worst is when they sort of act
> like they are operational, but then do strange things.
> 
> I haven't thought of a good general purpose way to handle this.  I'm
> toying with the idea of making it so if the BMC gets an error, just shut
> things down for a second or so and then test it to see if it's working.
> During this time just return errors, like the new patches do during
> reset.
> 
> Thanks for testing these.
> 
> -corey
>

Thanks for working with me on this.

> > 
> > Best,
> > Fred


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
