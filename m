Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GH5xL+Gy4mkP9QAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 Apr 2026 00:23:29 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E7141EDF1
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 Apr 2026 00:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N/Vrbzzbsom8CwxiZxT8aTFbcYBegoydHkviLWRUG24=; b=lNwmjV+VM/8aSwzxzZR6RvPkyR
	XmzeijMo+sIsxJDHdszv5bsL46BDe56Er1XjLVkxJRfB+Bedq74f9WJ4iuiGHsHjfLi3ZXXRPXADQ
	CAPsXtD2qX3Hh3stBbpKbS5zv5ucPI95dmneCQoSmuyNS0P3+TEWB0sKLINqqbwZDC+M=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wDrao-0001lU-Mo;
	Fri, 17 Apr 2026 22:23:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <matt@readmodwrite.com>) id 1wDran-0001lO-Ck
 for openipmi-developer@lists.sourceforge.net;
 Fri, 17 Apr 2026 22:23:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=keW8tCNCXNgFds1AOTm1EAKoDbIP8ABP4q+r78ZZpQk=; b=Orr8dJ7eZjpncRDSbdMmvHX7r9
 Y01FmVcC62ujqkAG53ljjK48yirkedQXgVXxJOOGVFAr39GquLIhpzKb+aTWqdq4iQlVNWViHWxNi
 uxXBVeO1YCCJTFmG5PAALfLHwRC6+E4XWvxdKVjSxIn14b9Btm+VXtiMEkESx69W4qk4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=keW8tCNCXNgFds1AOTm1EAKoDbIP8ABP4q+r78ZZpQk=; b=c6oq/Zxk+GgICz0vr3APoOkNnl
 Rrv92NOqwTv3l8Svm4Dvcljkge0tbo0xTKGrqgKUQjICzzwFJbe7IUfTxJ5PP0YPGrXFBzJaCJ/er
 jMpoHXsWjM3LeqWuQgdg580aH2hmdX6IMMS81PrkgZjavzLI3w4nz3vC0ndY7sAeUEVc=;
Received: from mail-wm1-f46.google.com ([209.85.128.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wDram-0006J0-RS for openipmi-developer@lists.sourceforge.net;
 Fri, 17 Apr 2026 22:23:17 +0000
Received: by mail-wm1-f46.google.com with SMTP id
 5b1f17b1804b1-488af9fdaa7so7909435e9.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 17 Apr 2026 15:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=readmodwrite-com.20251104.gappssmtp.com; s=20251104; t=1776464585;
 x=1777069385; darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=keW8tCNCXNgFds1AOTm1EAKoDbIP8ABP4q+r78ZZpQk=;
 b=V2Qx9j03NdIKXkhmzWEFiBjsAtTwY05dY9I5coxGEokjHTLWBemz+f8vjqVnByFfkz
 cZ3Z/hd6HUqTFLcDabcZy/9ivdI75cG5L82QzdZoxeuPRNBeMG8OwL6oxN/QMbZun5ju
 hPNvLmD7o4ZDwavTmSDgcTSEWDECX067UZH20LciTuYeTO4oECLSeN8/LXvCO5W0TcB3
 EOtPj7+XwMkIVRQLFg1OsR+FBq8ignCB04Ehi6lbdLX/T4bJ/u5d6QZdY7tbzslSQvo2
 URpHYxH864+U9+3PtTnjA6LH+9KyrgQEVghZHlIvF3XIoGDxnLxGLlrqHr3Fenynfvwl
 dVrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776464585; x=1777069385;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=keW8tCNCXNgFds1AOTm1EAKoDbIP8ABP4q+r78ZZpQk=;
 b=mPIl11ZPpwTDCRbgKAMz6exyFDlhYfrBJCxQpyZB2YAA3U6GfxkrpqnOma3BHiz7wL
 8hQCEzqLnMQAR/i3J0bbdRV2pyeNm7XBRWNhsSmv7FwByRxATniq1Bfdi3YvXMi/golR
 VaRyrepnHKkGg8U2H20GROQMgLDw7HW5KsC+NdwTmrGgtPq1IU75+C6Q/KerH/CX+70O
 Jjv9l34CzNo5igdnU0QaTLhXrT8dP+XnGwCV+la+je/6iOyhsUePDQyUSS3zKOHgfKNa
 x1yCHwJQtpD1sI7Ft5B3dtfipPVn2Cfq15giPcfFksYmS8KvkcU+4/P8924FdFeC7UWZ
 wA/A==
X-Forwarded-Encrypted: i=1;
 AFNElJ9w19l3w8bk+DEM0CeoWliSJCPCNF632nXe0SP7kYzps3FVH48RibERMeEf/TQ9rvJZKRF1vs2gf0YKSgnSgz+mi7c=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx5Yi91Xm458eZMsLT1kVDpdAIqe1gMzv0eHaeTnCJlk8Rot+kA
 5sXI3NZMwrpBJ94eXzgcd3BHXpNHyxakrasWWfQtkVEz+EOjyOQf1roMkXgUsY/Sc1s=
X-Gm-Gg: AeBDiestwGAjZd/X1Vb6xsu4Y/R8JIw0tyb8oAlT6+hjMLbvikdzZEEcGy/63p+obJh
 Ied3yIysI8/bITA3Fgv2s8I+Ep/oegT6bSUExr06KjtK/qTWOchYISS2ixfqYF1HQvs2hu193EF
 TAVEZSuUzGJpxRMEJoklYUupt3FtQeYVhlMzivylydFnCyvPYBtX1Jcw8uEOf3wgtjncJAltRL9
 1KMj7fjkiA2fUpA/CqNuy/sS3Q0XbnqWi6R1oJ+wuhgMA3XXxLf3uyby6k820rcxgoUFXlpim/l
 WgZ3vF9+pQPSNpJsZutjQSaZw/qyIUiZQ0ESwzOxndpYdj1Uln3KURvQxU4Oe4nL4v5cg/Sobf0
 m3pF46Gc41vrVmY7hSJnj6BgH+UhQSu03wmjYZP1fGfe05n13yof0FQdnetGt5iIlMzbG5Lrl8I
 EK9DUoKalzaR8btEriQQ==
X-Received: by 2002:a05:600c:888b:b0:488:c40b:c8bf with SMTP id
 5b1f17b1804b1-488fb73d234mr53748045e9.2.1776464584835; 
 Fri, 17 Apr 2026 15:23:04 -0700 (PDT)
Received: from localhost ([2a09:bac6:37a8:d2::15:415])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-488fb6e16b3sm39339915e9.0.2026.04.17.15.23.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2026 15:23:04 -0700 (PDT)
Date: Fri, 17 Apr 2026 23:23:03 +0100
From: Matt Fleming <matt@readmodwrite.com>
To: Corey Minyard <corey@minyard.net>
Message-ID: <aeKwa4napKfBerJM@matt-Precision-5490>
References: <20260415115930.3428942-1-matt@readmodwrite.com>
 <ad-BtS5b3qiowqb7@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad-BtS5b3qiowqb7@mail.minyard.net>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 15, 2026 at 07:16:53AM -0500,
 Corey Minyard wrote:
 > > The lower level driver should never not return an answer, it is supposed
 > to guarantee that it returns an error if the BMC doesn't r [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wDram-0006J0-RS
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Add timeout to unconditional
 wait in __get_device_id()
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@cloudflare.com,
 Matt Fleming <mfleming@cloudflare.com>, linux-kernel@vger.kernel.org,
 Tony Camuso <tcamuso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-0.61 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DMARC_NA(0.00)[readmodwrite.com];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:kernel-team@cloudflare.com,m:mfleming@cloudflare.com,m:linux-kernel@vger.kernel.org,m:tcamuso@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,readmodwrite-com.20251104.gappssmtp.com:s=20251104];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,readmodwrite-com.20251104.gappssmtp.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[openipmi-developer];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: 03E7141EDF1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 07:16:53AM -0500, Corey Minyard wrote:
> 
> The lower level driver should never not return an answer, it is supposed
> to guarantee that it returns an error if the BMC doesn't respond.
> 
> So the bug is not here, the bug is elsewhere.  My guess is that there
> is some new failure mode where a BMC is not working but it responds well
> enough that it sort of works and fools the driver.  But that's only a
> guess.

I can now reproduce this pretty reliably by running concurrent
ipmitool commands (sensor/sel/mc info) + sysfs readers + periodic
ipmitool mc reset cold. It wedges in a few minutes. 

My working theory is handle_flags() in ipmi_si_intf.c can loop on
flag-driven commands (e.g. READ_EVENT_MSG_BUFFER) without ever calling
start_next_msg(), starving waiting_msg indefinitely.

Captured state at wedge:

  si_state=SI_GETTING_EVENTS  msg_flags=0x02
  si_curr cycling cmd=0x35 (READ_EVENT_MSG_BUFFER)
  si_wait frozen cmd=0x08 (GET_DEVICE_GUID, never promoted)

The cold reset makes the BMC report EVENT_MSG_BUFFER_FULL during
re-init, which drives the flag loop.

Thanks,
Matt


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
