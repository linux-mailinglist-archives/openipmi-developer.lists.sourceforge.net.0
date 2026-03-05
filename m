Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PoBDy63qWlEDAEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 05 Mar 2026 18:02:38 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 871D8215D23
	for <lists+openipmi-developer@lfdr.de>; Thu, 05 Mar 2026 18:02:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gbi18M7kbzLq4UleHydQw0znJaPoWSZNd/ClV+XTj1g=; b=Vk7e3q7QZyo5oyLS2aVsC1LR6v
	Tx5rIpElcTEy5l8DKwqA7mXb6fTRCXg1FU5Q9TiI1713DeWUmEUDZBZhE1wVoXQoeu6wnjnsnnEcM
	bNsJ7P2CvNgcH3cb2iXScibMxP1rtgwsF+CZeXosFI8w4qt3Tjot+F0BJTEJqBGM6+1o=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vyC5e-0008Ei-6J;
	Thu, 05 Mar 2026 17:02:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <marco.crivellari@suse.com>) id 1vyC5c-0008Eb-HO
 for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Mar 2026 17:02:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=msRPIy5EH8OOR+52y6U76cZQDxdi+SOT13SLDpRneRE=; b=kEA0he0J5GsEBcKYwBDGNnMbuJ
 xj7XMZOxjOv9lTBpLRHWA4iwp+76G76gsb4K2ZUsZioGSdQaPAzuzsfgs7JW3DkP41ehZWvJjNpBq
 XQPMya10Ts2sBTUCxr7tpSSy0JDQ19wWBLGAmgaepEJA2dassnPTwQCwQSjPPK2hR6uw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=msRPIy5EH8OOR+52y6U76cZQDxdi+SOT13SLDpRneRE=; b=kuhr6ICmuuwAUYHyH0yRnqOi8w
 moaN+JSSe1qUWyoc9i9jePXSNg7a5Yq5CzzzT2sDvDIHoLNp7Jg7dd1pL+21rmCXJqvkNd2UpuaQA
 TupPLWqv4yWCe5WnzYum9UCl1YcOVC3WxJK0uFaW7Y7+sOuSxnSBKI8hPSaPwLKBT+uU=;
Received: from mail-ed1-f48.google.com ([209.85.208.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vyC5c-0003qP-79 for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Mar 2026 17:02:20 +0000
Received: by mail-ed1-f48.google.com with SMTP id
 4fb4d7f45d1cf-66151557d0cso1279832a12.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 05 Mar 2026 09:02:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772730129; cv=none;
 d=google.com; s=arc-20240605;
 b=AaVPwXkzFjXdFvUGGr7hfugbjSxl4iSpYL+E0EvjTK1n70fgjRa4HfrqzqDs7NQcPe
 f/i9vhdROhUugNs1hKmBQA+hAZaxRlh7BgXTmR4QBgkF0HPqeQE7uVKiycPbw1NBKizc
 D1EtAUjYATEHrKJrECqG58gdMU0wS4J0AzzW+SxPJ3ocTYoohCMapTa/LX31sHGVLzAE
 rpA7oeABKe5NuKKso8yOoQ2Ei3Bl5kuDrYYxp2tYxaVREFI01R13sF+PT0jOJC7ufojo
 YZX4zAqohkwh8rXtMbczu+oq0njGvVeP+Wt/ORggIgXcECCVuk/ZCdjLoWpQC2Sl0Gar
 NqeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=msRPIy5EH8OOR+52y6U76cZQDxdi+SOT13SLDpRneRE=;
 fh=IRFYG32JpDhrhEYOutz7rk9QQ7OpEI43TLdTY3T2WBY=;
 b=hPzGu2zcHIXCI9OE2efFzFb+eUgR+NjnOGip5+x3OFPaO4iLkCGEmAjQNMvfwyxlnh
 xM5hiH1WiYB5qfmG4QRFpIff+Mrwu7V97j2WbPcU0dS8VSdZKkmDjzV8ReO80+GIZLTW
 O/K77aZiKjIbC/Jas2l+EjKsE4cUNFTlBSo4/wDO68IdMsxeXZPt8V5Fgm2ZtQCNRX6f
 tQ2WeoZkXMc/xg4PLAmpv9Ab/u+tkqA3tcwLYsR5S2D3XUoTuIjwAI49DIoJYCD2q8Xn
 VtE7u9DafBZPkp6E7G9/1SrIwKVqRlJ8WL6e7vpvU9gy5+cwjKwmL9XF/xXfZF5qK+5W
 qpag==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1772730129; x=1773334929; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=msRPIy5EH8OOR+52y6U76cZQDxdi+SOT13SLDpRneRE=;
 b=St2LVEDfOIQrFAy80LkHsyJmfZe1eNmDSBZwU0ZrDbP5RUBSEjEdBGKSoYGg0ZLoAo
 XrNqjLLFRpFx0d4SGEuojRFfVgO/43JlYFk7Q6WE60Igcr8Qi74g+MzoynuMIsG2fRjm
 f9WJxSXBZil1gtJV7rMOcwoXzfmkC5qhG0/3N8SosYR/R5F0rjUGeQHczogN+JEyJYnn
 5quw2uhrsMAKUaOSF82MVfC175DnuulBjHhNtcNfzLqUD9H0ulX3otpjw5mhrncos9l9
 ymimPXjM8XlmWifGepFzcM0laQ7MuLijo269dX3wF0yUkE11UZXN7ZzkQTz6WorrTqCR
 EUsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772730129; x=1773334929;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=msRPIy5EH8OOR+52y6U76cZQDxdi+SOT13SLDpRneRE=;
 b=mlmvUOpr8ctvS7reZGI6vLeY5G9iq+77OlED9UUGrsy0OEwB1iEcuFDFYyqKT+DuFA
 P6YDIEqyIckKChZ1Py5X38AG0lTWvtH3LIoUsrGo941gUh4qG1RSq9jx15bXCdoFYwnp
 xHdxyXsVAT/1cxbVSBsmwwPbgbxashPAffFBLY30LCZZB3SRcOVB5fpRZXXQAxjgClvc
 BYBA80GTz4OEjSooKcXM0V8J1CqGwBk64N8pj0hslXs0GHbd2viBIB883e7KoCxs2LQi
 Vvy6ttZuIfe2RJvHZS3phB6fi60Oz3cnZTm1NNXHnhbrlk0Km6+5jshaF6dp7d00Z0pS
 OKnw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUFchiCC6sYInqzS5eRE3ZbUt+FTnLwZ+/3ZHeSXtRfOcdsIaG/pO+CmL0MY98LwA1lBgryhMQAlOxpZ2Y1oXjuG7A=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyKiWMkIkLVrrDQLnj+vyEQb5E1lKqFAprgtWr+agMxkv8S+fmC
 f2YeB+G+zxLr8IrzImkVkDbxw2a0lwwOQyPuqenlqXciYVrHeJ5XDZueFHQEuxh6BY6maQrLDWS
 Hrv9DWfFTbUyVEegcrlMhJYfPqtjtbZ8fHCnVzC0/P3AqPnAlhPhh
X-Gm-Gg: ATEYQzy8MGPZsixY+wpV/tzslBmHVdvDXBSJSz3RFE1wkOsCm40o8rfAlJnwDU3SBFT
 NXW9moVPzSX9Egm7YFI8j+uaswX1A5q8JgCnOcMtXPaclU7p5GHyexf3hnwVIaIIzP7chMTn6zw
 APi/Q8zJPLGvcSY5euO2jGE1RJOKdCNYr+9q1GqaEGKNBzkT/LX/fFFrOxPlvp4Y4aciPtzQ6/m
 HJnfsYYJRSEW2//S4ZDYlYdQphCkTFeQWXsf82NVlpKtopQQEvwJN2hQdvB2jfdXfElBoqlZtyE
 f/30wtg5G6NH3miT7gTvpU+Almdiyjbux3pcW5ct
X-Received: by 2002:a05:6512:2c0d:b0:5a1:334e:1e82 with SMTP id
 2adb3069b0e04-5a1334e2003mr991170e87.48.1772729766033; Thu, 05 Mar 2026
 08:56:06 -0800 (PST)
MIME-Version: 1.0
References: <20251224161301.135382-1-marco.crivellari@suse.com>
 <CAAofZF4OZOHzBuBTYKVsbRp16+1auj3AvT7s5GhmK=NAgrRpAg@mail.gmail.com>
 <aam1QHcbNrPvYUbX@mail.minyard.net>
In-Reply-To: <aam1QHcbNrPvYUbX@mail.minyard.net>
Date: Thu, 5 Mar 2026 17:55:54 +0100
X-Gm-Features: AaiRm50b6gZM0airBo7exXvn6xjMrVnbzu9HHsAiOXhvXF27WVyL1CfszPNkXNE
Message-ID: <CAAofZF6VT2__5-oa+W+-ODnuHT-x_dstqZQZ6SghbZBw+ossAQ@mail.gmail.com>
To: corey@minyard.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 5,
 2026 at 5:54 PM Corey Minyard <corey@minyard.net>
 wrote: > > Ah, I thought you were putting it in your tree, so I just acked
 it. > > It's in my next tree now. Ah, no problem btw. Many thanks! 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.48 listed in wl.mailspike.net]
X-Headers-End: 1vyC5c-0003qP-79
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Replace use of system_wq
 with system_percpu_wq
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
From: Marco Crivellari via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Marco Crivellari <marco.crivellari@suse.com>
Cc: Michal Hocko <mhocko@suse.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Lai Jiangshan <jiangshanlai@gmail.com>, linux-kernel@vger.kernel.org,
 Tejun Heo <tj@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Frederic Weisbecker <frederic@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 871D8215D23
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-7.51 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:mhocko@suse.com,m:bigeasy@linutronix.de,m:jiangshanlai@gmail.com,m:linux-kernel@vger.kernel.org,m:tj@kernel.org,m:openipmi-developer@lists.sourceforge.net,m:frederic@kernel.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,suse.com:-];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[suse.com,linutronix.de,gmail.com,vger.kernel.org,kernel.org,lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,suse.com:s=google];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[marco.crivellari@suse.com];
	TAGGED_RCPT(0.00)[openipmi-developer];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,minyard.net:email,suse.com:replyto,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

T24gVGh1LCBNYXIgNSwgMjAyNiBhdCA1OjU04oCvUE0gQ29yZXkgTWlueWFyZCA8Y29yZXlAbWlu
eWFyZC5uZXQ+IHdyb3RlOgo+Cj4gQWgsIEkgdGhvdWdodCB5b3Ugd2VyZSBwdXR0aW5nIGl0IGlu
IHlvdXIgdHJlZSwgc28gSSBqdXN0IGFja2VkIGl0Lgo+Cj4gSXQncyBpbiBteSBuZXh0IHRyZWUg
bm93LgoKQWgsIG5vIHByb2JsZW0gYnR3LgoKTWFueSB0aGFua3MhCgotLSAKCk1hcmNvIENyaXZl
bGxhcmkKCkwzIFN1cHBvcnQgRW5naW5lZXIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5p
cG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
