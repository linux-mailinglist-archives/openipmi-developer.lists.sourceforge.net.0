Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8B4B26E9F
	for <lists+openipmi-developer@lfdr.de>; Thu, 14 Aug 2025 20:10:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3UziR4pLmg3vGndZs1ti0VstEQABtSjD4FfRqmzO4Zw=; b=O4f4Dp9gW6yGKijgkNfpjmktLG
	Aq3y7GHJ3P59mi9n0LWmhoHD+Lh975558/QGUUCzKEgVUNXqSbs0YOrAegqMCDot+USMzuNTH0MkY
	2hYlxPHnJ+N4qEV8d+5ASqh4C1h18GLOhv6zE/+SpciPj6D0e9FWDS/mwUdto6lf6eUU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1umcOc-0008Fa-4N;
	Thu, 14 Aug 2025 18:09:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1umcOa-0008FT-RL
 for openipmi-developer@lists.sourceforge.net;
 Thu, 14 Aug 2025 18:09:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E34Du0OtbhjPLU9rTEe2M43Qp3cASXZc1Sj+FD6Os7o=; b=gmO8LUmSbrE6jwkiYL78tMWJ3j
 KkkITI0I3ocxI9kJEudck23VHuyEtw2fxptUFtLArv+R+WxAavd0FoUqHhZF1H7qw63y5gTXqmK3V
 HFDkLJwQrl10gVXfz+0w3pCjCAO+86j9Hg/U4i3UB3/h2WjXq9PHKpQECXn6OAINbvl4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E34Du0OtbhjPLU9rTEe2M43Qp3cASXZc1Sj+FD6Os7o=; b=HTdOF7YMRFiL3x1fmc4Vwu9doS
 SNDvbWfXR/AWV+FOLqf7hHSVOCoG+j+ivBMpo7SsXeOKD87vQqo4F2WFPLPQnpwm4r/JtFzbDfKlZ
 ltBFgDoS4HHBaR5BFeNkO2ebeoC9EP+fAur5p8ChoyvSBW0Xl+L7Blkvm8qFJi2fNPlI=;
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1umcOa-0002Z5-Bx for openipmi-developer@lists.sourceforge.net;
 Thu, 14 Aug 2025 18:09:48 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 46e09a7af769-74381ef25deso547280a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 14 Aug 2025 11:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1755194977; x=1755799777;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=E34Du0OtbhjPLU9rTEe2M43Qp3cASXZc1Sj+FD6Os7o=;
 b=XAOmFteQPsZuV6N0t+uBuNcjYkIxDK+672ESZK8yR2tMsGOZHt4c1HzK1ShUthi+X8
 hokFKuTp/8n1INFfPu/59Kx1yhV+kqmr9qR6qMo5QAhYCtOjGwRMNp8dnq2o1tP9okqS
 9k1fvX69mM0GeX0q8wKftuveadcE8fh7URQfQCDNBzyD6DuNkYU2mXZEhNfpNFO7Qxm+
 3r1YvKZoSUehTOgoMjTtDZ0pUbUFNLOFpyJAsoJd2fBZfNl8Do35BTIlEEfm0C38LJAq
 E2di2fN1Ig+tsF3mvThWR91W6cAR0Daf0Bo6xdtZgIyWhb/VHnx9uBqvTrdURjz354QO
 iq4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755194977; x=1755799777;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=E34Du0OtbhjPLU9rTEe2M43Qp3cASXZc1Sj+FD6Os7o=;
 b=Vs2sBvJzNhjDEdZlIvAG35Pm6TBuOd53IjL0GKSRzFMBDWVoTNOkkYdfkhfBOAo+zC
 fH28gxQJiZx7MvtFCgrqBO9fn5eDDxl1z4HrCAyZXBmsE5tsPtYUbg7jWoZ858aDZzyl
 urve7ldT9KZr+h36wygiuGXkeL3/4NoqUjyqbKENb3iqhHiiXi3ecCXNpWubwJSbZr4s
 Hd+x/HM0BC+mo/ufrwIybFXJ7cKTpHS9aQYfw/K3kGxKA6rUoR8QFCHyFaUDJTMYGLdS
 1+Ju6gKDmOzL9jseBLS4OvSz8BTApLuy9JMBPSk+tJckNd5ez4B4pw1Urybb3vCipxT1
 E3lA==
X-Gm-Message-State: AOJu0YyAJfN0otlWUQZ0nzbQwl40dPYA7Lc9A0D75VscEzvTK0iQNKtB
 Cbaa1ctjdv1OieokHFWMrJ+5uyyeHupeCUuUyVXUfzW0wkCTmFHH5m/sD7usjBbq4lA=
X-Gm-Gg: ASbGncsIxzIBNqklMz7H28hUZrb5Ij/VrQBeom9VTKGTngymrjyj1rVHARnzaMeA54e
 TuYdsxM6CbKnnPk9m5lJfLEgnLXO0JrH1nG9aB8aED7Fka2X3bSWoaTf+XmKUv9RWsl4XBvZUYi
 zaszJi1ZNERlJIOm8obxIc08ObPGmha743ltCWE1D/XSxx5KDLWTaFaLl+493CLRBIEmGV/j6MH
 92meW4G0mW9HPhkJYdIetzgE/aZCJzHO+ydzJD9Eg233Ptql+FsGxfc3/LbbDLLlDY4JcuL9jgj
 MHtkftdO1TLZgzB0s+VVOuhMZhUxXUFWlSWyu0HcVDxds+NUUw3pENOsMUPpdnCM5bqyINJeOW0
 Joy/O1Sh+8yvrXLzWzzWgVGTgjw==
X-Google-Smtp-Source: AGHT+IGBt8CPi0oTDRaQ56TYDTGmhLEuSCLMxcK7BOZP8PPMouHItgbfDRisSLAhtLqDsGnjv7e2Sg==
X-Received: by 2002:a05:6808:3098:b0:435:6bc7:e747 with SMTP id
 5614622812f47-435df8305bamr2586249b6e.37.1755194977532; 
 Thu, 14 Aug 2025 11:09:37 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:5997:2a79:b452:b907])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-435ce6fe528sm1150358b6e.7.2025.08.14.11.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Aug 2025 11:09:37 -0700 (PDT)
Date: Thu, 14 Aug 2025 13:09:33 -0500
From: Corey Minyard <corey@minyard.net>
To: Mark Bannister <mbannister@janestreet.com>,
 Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
Message-ID: <aJ4mXfx_fJsK7YUk@mail.minyard.net>
References: <20250814135419.616256-1-corey@minyard.net>
 <CABpvmx_FO+MSJahsNRrv2KBfnb-Rib9FZa2f0w05MvZuwDhYOw@mail.gmail.com>
 <CABpvmx91CoVz8Tcui2j3CUSn=t4fSvCSRbYRWjZWZzSV+we_0w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABpvmx91CoVz8Tcui2j3CUSn=t4fSvCSRbYRWjZWZzSV+we_0w@mail.gmail.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Aug 14, 2025 at 06:23:23PM +0100,
 Mark Bannister wrote:
 > > > Thanks for the bug report and debugging info. I think I know what is
 > > > going on, I've attached a patch that should hopefully f [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.41 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1umcOa-0002Z5-Bx
Subject: Re: [Openipmi-developer] [TEST PATCH] ipmi:si: Delay when an error
 is discovered in error recovery
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

On Thu, Aug 14, 2025 at 06:23:23PM +0100, Mark Bannister wrote:
> > > Thanks for the bug report and debugging info.  I think I know what is
> > > going on, I've attached a patch that should hopefully fix it.
> > > Basically, it looks like the BMC is alive enough that it sort of
> > > responds to the host, but not alive enough to actually complete a
> > > transaction.  The driver needs to not immediately retry in that case, it
> > > needs to delay a bit.
> > >
> > > It passes all my tests, but the situation you are in would be hard to
> > > manufacture for me.
> > >
> > > Can you try this patch?
> >
> > Thanks for the super quick response, I'll try out this patch and report
> back my findings.
> >
> > Best regards
> > Mark
> 
> The patch looks good.  Without the patch I was able to reproduce the
> problem on kernels 6.6 and 6.12 (but not 6.1) after 5-20 attempts of
> running 'ipmitool mc reset cold' every 2 minutes.  With the patch, I have
> run it 50 times without incident.

Perfect, I'll queue it for the next kernel release.  I can get it into
the current release if it's urgent.

The change that caused this was c608966f3f9c "ipmi: fix msg stack when
IPMI is disconnected" and it came in between 6.1 and 6.6.  I'm adding
the author of that patch because this change may affect that.

In hindsight I think the fix that caused this is wrong.  I'm not sure
how what the author said was happening could happen.  There's a limit
of 100 messages per user.  I am inclined right now to revert that
change.

> The hosed counter isn't as much of an
> indicator as I thought, I saw it in the tens of thousands with and without
> the patch, I have also seen it in the hundreds of thousands without the
> patch and on other hardware I have seen it reach 5 million in one hour
> without the patch (but also without incident).

Yeah, that's just a count of how many issues it has with the BMC.  You
will still see it go up.

-corey

> 
> We will incorporate your patch into our builds so that we avoid hitting
> this problem in production again.
> 
> Best regards
> Mark


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
