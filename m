Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SfvDHf1bTmoILQIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 08 Jul 2026 16:17:33 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B32CD72737E
	for <lists+openipmi-developer@lfdr.de>; Wed, 08 Jul 2026 16:17:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=IiiUMCks;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=bDmGnkTI;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="O//neW/b";
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=cLbi4iW4;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:References:Message-Id:Date:In-Reply-To:From:Mime-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r/N2+5mg+e7KExAs2jwxprrHp/s0N16OTNlfHHr+wGk=; b=IiiUMCksMDZFPYesl91KY0S1OE
	vhLyaCvxV3iL+8QZEHrJyEBT5oFZg6wLP81dxTRavsEmqqsENGt9PaQhBTlRcwnfLvK+xVldFZ5PJ
	O3JI6eEGxVE87wVDX1f4JODwRZj01yeJInjNOf/tMvprrsQ9G/j8MSeL8HF0L6RzpGEc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1whT5X-0002Wy-6W;
	Wed, 08 Jul 2026 14:17:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shankerwangmiao@gmail.com>) id 1whT5V-0002Wh-LC
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jul 2026 14:17:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d4xgsEpJa1JkMfAC5lrqnM5nTtBq2Z6cq/mQ8FHTkeQ=; b=bDmGnkTI6QCMcIUo7UFKbKXahb
 GM4hmAMpaxtY6cVMK+zkwTImSwrxLP2THtoBFDX4t7trYgKevut6vqi7Ve9gS7tucS3k7UltYlopy
 eKFIwvzNTzh+7CYgDt1N4CP8z3QA2AjURyIErvnrsuZYQbxDOck7nQezNHtXjWGJVFRA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d4xgsEpJa1JkMfAC5lrqnM5nTtBq2Z6cq/mQ8FHTkeQ=; b=O//neW/bt9iYjfqNRMS8wOnVc/
 Ym0hjghLYhXJ5zqV+Oata3QWjmmhnqnPT8EZr7Jf9EijNzYBfgp348x7nRCdhaFi124qooeHPU3IY
 5TxVLQLFdkVKL7Jf3rz1rJVJ65OQIzKfVdtO39DhaALGfJKPaCQinSPzNM9XB/XH8C7A=;
Received: from mail-pl1-f181.google.com ([209.85.214.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1whT5V-0002hJ-19 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jul 2026 14:17:22 +0000
Received: by mail-pl1-f181.google.com with SMTP id
 d9443c01a7336-2caa0551d8bso2741915ad.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 08 Jul 2026 07:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783520230; x=1784125030; darn=lists.sourceforge.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:content-type:from:to:cc
 :subject:date:message-id:reply-to:content-type;
 bh=d4xgsEpJa1JkMfAC5lrqnM5nTtBq2Z6cq/mQ8FHTkeQ=;
 b=cLbi4iW4Uuh60WJftdoUozjUIp1B4KibkREwvGiwLpQ5P9dCet91auiKGitXkWfCrZ
 rbcO9810ai6GYr4yvDEXUk57GAzM5sW9mg27P4WuSIfkb0N2Aksr0H0nSawhfBvOxxii
 87aQPaMkCzcrU2yx5IE/lJLz+ZbEILstwcObFOwLI3lBHTQTPbJf7L2heESxdZMUcCKS
 4FKqCjPLe+giaHw/hJAIHlqMyA59OaXwltlk0xhQgRuwCp93rLSqV0z2UfGve+moehGu
 jhIv1IwkIqwbMgAcyl7Q3CrXoEc/nbqIhf6VY8CW/wRFBhhYKjfUMDFthaJclEdci+Qa
 eZxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783520230; x=1784125030;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:content-type:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
 :content-type;
 bh=d4xgsEpJa1JkMfAC5lrqnM5nTtBq2Z6cq/mQ8FHTkeQ=;
 b=rthvb2GGVkJZzzmItGNl/6gXMPeTWvbiiHrTzA3EZ4gSb+ok7jzpkmjKOFvIKKmFjQ
 odXTaaRiUiZqChQ8qCtBCtrgT4BwUjuninvXaoc91sOBUJy99G4/y5bQL+WeX4oJTVl3
 Bm63+Z5EB2gj6n1J1zEUoIuZv4O4x5Vye4L1QvLLRcpNY318KpRq3Dgtl9ZQ3TPcUTb1
 gAuc9yFAArtt0Rg+r29xFRrPOzFfH9G3a0zGkW+0VWpUGTe49+r2H9WS25HG67uIncWU
 rHSPODCPTQiZIlbrfsKYGLNyjct+2X3PRx80NTKaM4wQ58/GyKGhri3Ztx6hJngfi1gi
 rfIw==
X-Forwarded-Encrypted: i=1;
 AHgh+RpMx+mBrcGKI1PNxGsJ/aHhiBTIn4dsPXMvc6gpSr8FHdIen8HosdzvrHvv0eiquUYW/hmCUZ1K86mt/riP/W6JhZE=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwdJSLJFnz58U041rywtKtqhG072vaXTtwftNCgshhK1f2TTyQP
 08t8mWSCf0QGcsaYPq6XXAtegqPuc5kOX8uHU0wS6UJvwHBJnR5mxoKl
X-Gm-Gg: AfdE7cn/DBGyiCgKxzbo9WKfwW261+NxulyRX3C7qEHgsyQvOcquXpCEWHwFwmmprxK
 RiiwHQK8VzELd9RFVtiZpPSee27u5242Mv1bC6icdEFmPfCNe5Tc59CTE7i6Lo7WfHYXGSh/uqr
 Lf4/JFX/v+QVUWZvHtOiImvQFJIwqT40Jj5OjjyRcK++LdMhmPqarRbH8GjlRc0mWLDBfuRaeg6
 6FqjDjvfaQimrh5YFTfRrXJTDINxv51KSlL0xOoikLL76JwEe4KAcDLrs5Y0MFD3RRQEtZa33Cw
 LeKOttHPX+0VyZQz8GHvPMSnxno9AHUU7OayfsI53ZqHRLklNo1ZVRpw+YAnywUNZkcnlEiG232
 TE7Qw5swNfHPxRLxc1LRC0PFsfSlP1MIa6r/ax5F32YL0cwBYjKuYEce6GIZAhdtnL4ANVVrVBZ
 EPR8qAbsZroiVjRJkruOKVBItkhyAoVqGOOhNFfTRpTOvCwg==
X-Received: by 2002:a17:903:2352:b0:2c9:d298:6c0a with SMTP id
 d9443c01a7336-2ccea2af751mr20982635ad.2.1783520230041; 
 Wed, 08 Jul 2026 07:17:10 -0700 (PDT)
Received: from smtpclient.apple ([23.247.139.92])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2ccc9d1e29asm28773865ad.52.2026.07.08.07.17.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jul 2026 07:17:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.8\))
From: Miao Wang <shankerwangmiao@gmail.com>
In-Reply-To: <5d6ea500e983035a2e5748e1bbf8ed6c26ac6f4b.camel@xry111.site>
Date: Wed, 8 Jul 2026 22:16:49 +0800
Message-Id: <D141EDD3-BEC0-458B-B477-9227B3FB93AC@gmail.com>
References: <20260708-ls2kbmc-mod-v2-0-2afdd1741766@gmail.com>
 <20260708-ls2kbmc-mod-v2-7-2afdd1741766@gmail.com>
 <5d6ea500e983035a2e5748e1bbf8ed6c26ac6f4b.camel@xry111.site>
To: Xi Ruoyao <xry111@xry111.site>
X-Mailer: Apple Mail (2.3826.700.81.1.8)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, > 2026年7月8日 21:14，Xi Ruoyao 写道： > > On Wed,
    2026-07-08 at 05:16 +0800, Miao Wang via B4 Relay wrote: >> From: Miao Wang
    >> >> The reset event of BMC is captured through GPIO. However [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [shankerwangmiao(at)gmail.com]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.214.181 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1whT5V-0002hJ-19
Subject: Re: [Openipmi-developer] [PATCH RFC v2 7/7] mfd: ls2kbmc: Capture
 the reset event of BMC through GPIO
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
Cc: Chong Qiao <qiaochong@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>, Binbin Zhou <zhoubinbin@loongson.cn>,
 Linus Walleij <linusw@kernel.org>, Lee Jones <lee@kernel.org>,
 mfd@lists.linux.dev, linux-kernel@vger.kernel.org,
 Yinbo Zhu <zhuyinbo@loongson.cn>, Corey Minyard <corey@minyard.net>,
 linux-gpio@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 WANG Xuerui <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.41 / 15.00];
	MV_CASE(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20251104];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:xry111@xry111.site,m:qiaochong@loongson.cn,m:chenhuacai@kernel.org,m:brgl@kernel.org,m:zhoubinbin@loongson.cn,m:linusw@kernel.org,m:lee@kernel.org,m:mfd@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:zhuyinbo@loongson.cn,m:corey@minyard.net,m:linux-gpio@vger.kernel.org,m:jiaxun.yang@flygoat.com,m:kernel@xen0n.name,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[shankerwangmiao@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shankerwangmiao@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B32CD72737E

SGksCgo+IDIwMjblubQ35pyIOOaXpSAyMToxNO+8jFhpIFJ1b3lhbyA8eHJ5MTExQHhyeTExMS5z
aXRlPiDlhpnpgZPvvJoKPiAKPiBPbiBXZWQsIDIwMjYtMDctMDggYXQgMDU6MTYgKzA4MDAsIE1p
YW8gV2FuZyB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4+IEZyb206IE1pYW8gV2FuZyA8c2hhbmtlcndh
bmdtaWFvQGdtYWlsLmNvbT4KPj4gCj4+IFRoZSByZXNldCBldmVudCBvZiBCTUMgaXMgY2FwdHVy
ZWQgdGhyb3VnaCBHUElPLiBIb3dldmVyLCB0aGlzIGRyaXZlcgo+PiBieXBhc3NlcyB0aGUgR1BJ
TyBmcmFtZXdvcmsgYW5kIGRpcmVjdGx5IGFjY2Vzc2VzIHRoZSBHUElPIGNvbnRyb2xsZXIKPj4g
dGhyb3VnaCB0aGUgZml4ZWQgYWRkcmVzcy4gV2hlbiB0aGUgc2FtZSBHUElPIGNvbnRyb2xsZXIg
aXMgYWxzbwo+PiBleHBvc2VkIHRocm91Z2ggQUNQSSBhbmQgcHJvYmVkIGJ5IHRoZSBjb3JyZXNw
b25kaW5nIEdQSU8gZHJpdmVyLAo+PiB0aGVyZSB3b3VsZCBiZSBhIGNvbmZsaWN0IGJldHdlZW4g
dGhlIHR3byBkcml2ZXJzLgo+PiAKPj4gVGhpcyBwYXRjaCB3aWxsIHRyeSB0byBmaW5kIHRoZSBH
UElPIHRocm91Z2ggZGVjbGFyZWQgR1BJTyBwaW4gaW4gdGhlCj4+IF9DUlMgcmVzb3VyY2VzIG9m
IHRoZSBBQ1BJIG5vZGUuIElmIG5vIHN1Y2ggZGVsYXJhdGlvbiBpcyBmb3VuZCwgdGhlCj4+IGRy
aXZlciB3aWxsIGZhbGwgYmFjayB0byBzZWFyY2ggZm9yIHRoZSBjb3JyZWN0IEdQSU8gY29udHJv
bGxlciBhbmQgcGluCj4+IGFjY29yZGluZyB0byB0aGUgZml4ZWQgYWRkcmVzcyBhbmQgcGluIG51
bWJlci4gQSBwb3NzaWJsZSBEU0RUCj4+IGRlY2xhcmF0aW9uIGZvciB0aGUgR1BJTyBwaW4gbWln
aHQgYmUgYXMgZm9sbG93czoKPj4gCj4+ICAgICBEZXZpY2UgKEJNQzApIHsKPj4gICAgICAgICBO
YW1lIChfQURSLCAuLi4pIC8vIE1hdGNoIHRoZSBQQ0kgYWRkcmVzcyBvZiB0aGUgQk1DIGRldmlj
ZQo+PiAgICAgICAgIC8vIFxfU0IuR1BPMSBpcyB0aGUgQUNQSSBwYXRoIG9mIHRoZSBHUElPIGNv
bnRyb2xsZXIKPj4gICAgICAgICBOYW1lIChfQ1JTLCBSZXNvdXJjZVRlbXBsYXRlICgpIHsKPj4g
ICAgICAgICAgICAgR3Bpb0ludCAoRWRnZSwgQWN0aXZlTG93LCBFeGNsdXNpdmUsIFB1bGxOb25l
LCAwLAo+PiAgICAgICAgICAgICAgICAgICAgICAiXFxfU0IuR1BPMSIsIDApIHsKPj4gICAgICAg
ICAgICAgICAgIDE0IC8vIDE0IGlzIHRoZSBHUElPIHBpbiBudW1iZXIKPj4gICAgICAgICAgICAg
fQo+PiAgICAgfQo+IAo+IEkgdGhpbmsgdGhpcyBpcyBhIHByb3Bvc2FsIHdpdGhvdXQgcmVhbCBp
bXBsZW1lbnRhdGlvbiB5ZXQ/ICBJZiBzby4uLgo+IAo+IC8qIHNuaXAgKi8KPiAKPj4gKyBhZGV2
ID0gdG9fYWNwaV9kZXZpY2Vfbm9kZShmd25vZGUpOwo+PiArIGlmICghYWRldikKPj4gKyBnb3Rv
IG91dDsKPj4gKwo+PiArIElOSVRfTElTVF9IRUFEKCZyZXNvdXJjZV9saXN0KTsKPj4gKwo+PiAr
IHJldCA9IGFjcGlfZGV2X2dldF9tZW1vcnlfcmVzb3VyY2VzKGFkZXYsICZyZXNvdXJjZV9saXN0
KTsKPj4gKyBpZiAocmV0IDwgMCkKPj4gKyBnb3RvIG91dDsKPj4gKyByZW50cnkgPSBsaXN0X2Zp
cnN0X2VudHJ5X29yX251bGwoJnJlc291cmNlX2xpc3QsIHN0cnVjdCByZXNvdXJjZV9lbnRyeSwg
bm9kZSk7Cj4+ICsgaWYgKCFyZW50cnkpCj4+ICsgZ290byBmcmVlX3Jlc291cmNlX2xpc3Q7Cj4+
ICsgaWYgKHJlbnRyeS0+cmVzLT5zdGFydCA9PSBzdGFydF9hZGRyKQo+PiArIGZvdW5kID0gMTsK
Pj4gKwo+PiArZnJlZV9yZXNvdXJjZV9saXN0Ogo+PiArIGFjcGlfZGV2X2ZyZWVfcmVzb3VyY2Vf
bGlzdCgmcmVzb3VyY2VfbGlzdCk7Cj4gCj4gLi4uIGNvbnNpZGVyIGFkZGluZyBhIF9EU0QgbWV0
aG9kIHRvIGxhYmVsIChsaWtlICJibWMtcmVzZXQiKSB0aGUgR1BJTwo+IGZvciB0aGUgcHJvcG9z
ZWQgQk1DMCBkZXZpY2Ugc28geW91IGNhbiB1c2UgZGV2bV9ncGlvZF9nZXQgdG8gZ2V0IHRoZQo+
IEdQSU8sIGluc3RlYWQgb2YgdXNpbmcgdGhlIGhhbmQtYnJldyBjb2RlIHRvIHBhcnNlIHRoZSBB
Q1BJIG5vZGUuIAo+IFNlZSBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9m
aXJtd2FyZS1ndWlkZS9hY3BpL2dwaW8tcHJvcGVydGllcy5odG1sLgoKWWVzLCBpdCBpcyBhIHBy
b3Bvc2FsLiBHcGlvSW50KCkgaW4gdGhlIF9DUlMoKSBzaG91bGQgYmUgYXQgbGVhc3QKcmVxdWly
ZWQgdG8gYXNzb2NpYXRlIHRoZSBCTUMgZGV2aWNlIHRvIHRoZSBHUElPIHBpbi4gSGF2aW5nIGEg
X0RTRAptaWdodCBiZSBiZXR0ZXIgdG8gbGFiZWwgdGhlIGdwaW8gcGluIHdpdGggaHVtYW4gcmVh
ZGFibGUgbGFiZWwuIEkKaG93ZXZlciBkb24ndCB0aGluayBfRFNEIGlzIGltcG9ydGFudCBiZWNh
dXNlIHRoZXJlIGlzIG9ubHkgb25lIHBpbgpuZWVkZWQsIGFuZCBkZXZtX2dwaW9kX2dldF9pbmRl
eCBjYW4gYmUgdXNlZCB0byBvYnRhaW4gdGhlIGdwaW8gbGluZQpkZXNjcmlwdGlvbiB1c2luZyB0
aGUgaW5kZXggaW4gX0NSUygpCgo+IAo+IENvbWJpbmluZyB0aGlzIHdpdGggQmFydG9zeidzIGNv
bW1lbnQsIHRoZSBsb2dpYyB3b3VsZCBiZSBsaWtlOgo+IAo+ICBpZiAobWlzc2luZyB0aGUgQUNQ
SSBub2RlKQo+ICAgIGFzc2lnbiBhIHN3bm9kZSB0byBsYWJlbCAiZ3BpbzE0IiBhcyAiYm1jLXJl
c2V0IjsKCkknbGwgZnVydGhlciBsb29rIGludG8gd2hldGhlciBzd25vZGUgY2FuIGJlIHVzZWQu
Cgo+ICBncGlvX2Rlc2MgPSBkZXZtX2dwaW9kX2dldCgmZGV2LCAiYm1jLXJlc2V0IiwgR1BJT0Rf
SU4pOwo+IAo+IEFuZCBzdWNoIGEgcHJvcG9zYWwgd2lsbCBuZWVkIHRvIGJlIGRpc2N1c3NlZCB3
aXRoIExvb25nc29uLiAgWWVzIEkga25vdwo+IHBlb3BsZSBtYXkgaGF0ZSB0aGUgImNvbnRyb2wi
IGZyb20gdGhlIHZlbmRvciwgYnV0IGhhdmluZyBzb21lCj4gZWZmZWN0aXZlbHkgZGVhZCBjb2Rl
IChpLmUuIHN1cHBvcnRpbmcgc29tZSBub24tZXhpc3QgZmlybXdhcmUpIGluIHRoZQo+IGtlcm5l
bCBpcyB3b3JzZS4KCkknbSBvcGVuIHdpdGggc3VjaCBkaXNjdXNzaW9ucy4KCkNoZWVycywKCk1p
YW8gV2FuZwoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
