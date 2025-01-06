Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D1FA0278A
	for <lists+openipmi-developer@lfdr.de>; Mon,  6 Jan 2025 15:10:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tUnoV-0007bh-Ih;
	Mon, 06 Jan 2025 14:10:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tzimmermann@suse.de>) id 1tUnoT-0007ba-Su
 for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jan 2025 14:10:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=De2f0n7HkbUbWwqJqOqDRVUUeul3Z2c9oNqi2ssPUOc=; b=Ug3wBgABfrU+1Ob0/7RBMwLNB6
 4Jg2wEp0r/8RMebbMRuz3CkDgCb9EgiJlY/OfaeC8sH/i7k78Yqm4UbVkSjKpqMLWrens24nJ9G2H
 Dshy40n9ZF3DSzCydswmkji8aIT5nlG+19myeFM4W0AEvMggbWqMs93M7XgajWpTro40=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=De2f0n7HkbUbWwqJqOqDRVUUeul3Z2c9oNqi2ssPUOc=; b=gsUbUaIWpWQgDbL0a5wJyrNvIG
 rvuIPKEt7sw1oeCUi14QC1GnHfzwDNxk9xapjcDghT42gBg4hFpppGqwX/n3LHIwfK9yQRUMDEgV8
 dG5QvSiqpJ1GdoYfDg7xk9dOgiJTc9/ZG73b/UeMW6LTjNYR9QniBPSTw8Qgt5E6X1ok=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tUnoT-0001wD-D1 for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Jan 2025 14:10:38 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id AC2852115D;
 Mon,  6 Jan 2025 14:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1736172625; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=De2f0n7HkbUbWwqJqOqDRVUUeul3Z2c9oNqi2ssPUOc=;
 b=HelyNMIxaBWze5R7sTCqWKff0Ugd8fwW4o4jcw4+kHsmCDqg4h3sWBAZg/kgy0l0rgaANU
 CWkCPl5WhsQHSVSBzVEs4/TH2Rj0gAKTmWroZotx+dee6/RENl7EDBOD+6/Z4Xwtr3cHwr
 9+RhpzzyrQsBI4+7f4Vb2ynpMQpPYjs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1736172625;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=De2f0n7HkbUbWwqJqOqDRVUUeul3Z2c9oNqi2ssPUOc=;
 b=WRdPCFNc32Gn4oAdt7BCTIBxOGoaE907HS33bajlGXXejq5rZKFkxdti4EIvXh5Zh70E1F
 SyzN+X+Gr1UNdGCw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1736172625; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=De2f0n7HkbUbWwqJqOqDRVUUeul3Z2c9oNqi2ssPUOc=;
 b=HelyNMIxaBWze5R7sTCqWKff0Ugd8fwW4o4jcw4+kHsmCDqg4h3sWBAZg/kgy0l0rgaANU
 CWkCPl5WhsQHSVSBzVEs4/TH2Rj0gAKTmWroZotx+dee6/RENl7EDBOD+6/Z4Xwtr3cHwr
 9+RhpzzyrQsBI4+7f4Vb2ynpMQpPYjs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1736172625;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=De2f0n7HkbUbWwqJqOqDRVUUeul3Z2c9oNqi2ssPUOc=;
 b=WRdPCFNc32Gn4oAdt7BCTIBxOGoaE907HS33bajlGXXejq5rZKFkxdti4EIvXh5Zh70E1F
 SyzN+X+Gr1UNdGCw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 45EC5137DA;
 Mon,  6 Jan 2025 14:10:25 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id GA1fD1Hke2fPNQAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Mon, 06 Jan 2025 14:10:25 +0000
Message-ID: <392f855c-4474-4e12-8bdc-3baf43d34e13@suse.de>
Date: Mon, 6 Jan 2025 15:10:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Binbin Zhou <zhoubb.aaron@gmail.com>
References: <cover.1735550269.git.zhoubinbin@loongson.cn>
 <4d62076ee560b35c653a9fbced8d03ef3bdb3005.1735550269.git.zhoubinbin@loongson.cn>
 <3daaaff8-062a-4985-a5bc-8d228314b02e@suse.de>
 <CAMpQs4JcuRhpOyXHxy0ab+D-Wd0itKdb0GiZdTE59_qEpUfyLA@mail.gmail.com>
 <390c14a5-44fe-4328-bcc4-2aa1384e3ad1@suse.de>
 <CAMpQs4L38rDEDYM64jJ6pO+g=M4+etKN9v9+ygzkLY6RQgu94A@mail.gmail.com>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <CAMpQs4L38rDEDYM64jJ6pO+g=M4+etKN9v9+ygzkLY6RQgu94A@mail.gmail.com>
X-Spam-Score: -2.80
X-Spamd-Result: default: False [-2.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 SUSPICIOUS_RECIPS(1.50)[]; NEURAL_HAM_LONG(-1.00)[-1.000];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; FUZZY_BLOCKED(0.00)[rspamd.com];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FREEMAIL_TO(0.00)[gmail.com]; MIME_TRACE(0.00)[0:+];
 ARC_NA(0.00)[]; RCPT_COUNT_TWELVE(0.00)[16];
 FREEMAIL_ENVRCPT(0.00)[gmail.com];
 FREEMAIL_CC(0.00)[loongson.cn,kernel.org,acm.org,linux.intel.com,gmail.com,ffwll.ch,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,xen0n.name,lists.linux.dev];
 RCVD_TLS_ALL(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 RCVD_COUNT_TWO(0.00)[2]; TAGGED_RCPT(0.00)[];
 MID_RHS_MATCH_FROM(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,imap1.dmz-prg2.suse.org:helo]
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for the info. Am 06.01.25 um 08:03 schrieb Binbin
 Zhou: [...] >> Could you point to the exact call that fails within simpledrm?
 > If we use simpledrm directly, the following error occurs: > > [ 8.289823]
 simple-fra [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.130 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.130 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.130 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1tUnoT-0001wD-D1
Subject: Re: [Openipmi-developer] [PATCH v1 3/4] drm/ls2kbmc: Add support
 for Loongson-2K BMC display
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
Cc: Simona Vetter <simona@ffwll.ch>, Chong Qiao <qiaochong@loongson.cn>,
 Huacai Chen <chenhuacai@kernel.org>, Corey Minyard <minyard@acm.org>,
 Binbin Zhou <zhoubinbin@loongson.cn>, Lee Jones <lee@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org, loongarch@lists.linux.dev,
 openipmi-developer@lists.sourceforge.net, David Airlie <airlied@gmail.com>,
 Xuerui Wang <kernel@xen0n.name>, Huacai Chen <chenhuacai@loongson.cn>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGksCgpUaGFua3MgZm9yIHRoZSBpbmZvLgoKCkFtIDA2LjAxLjI1IHVtIDA4OjAzIHNjaHJpZWIg
QmluYmluIFpob3U6ClsuLi5dCj4+IENvdWxkIHlvdSBwb2ludCB0byB0aGUgZXhhY3QgY2FsbCB0
aGF0IGZhaWxzIHdpdGhpbiBzaW1wbGVkcm0/Cj4gSWYgd2UgdXNlIHNpbXBsZWRybSBkaXJlY3Rs
eSwgdGhlIGZvbGxvd2luZyBlcnJvciBvY2N1cnM6Cj4KPiBbICAgIDguMjg5ODIzXSBzaW1wbGUt
ZnJhbWVidWZmZXIgc2ltcGxlLWZyYW1lYnVmZmVyLjA6IFtkcm1dICpFUlJPUioKPiBjb3VsZCBu
b3QgYWNxdWlyZSBtZW1vcnkgcmFuZ2UgW21lbSAweGUwMDMxMjAwMDAwLTB4ZTAwMzE1ZmZmZmYg
ZmxhZ3MKPiAweDIwMF06IC0xNgo+IFsgICAgOC4zMTI2ODFdIHNpbXBsZS1mcmFtZWJ1ZmZlciBz
aW1wbGUtZnJhbWVidWZmZXIuMDogcHJvYmUgd2l0aAo+IGRyaXZlciBzaW1wbGUtZnJhbWVidWZm
ZXIgZmFpbGVkIHdpdGggZXJyb3IgLTE2Cj4KPiBUaGUgcmVhc29uIGZvciB0aGUgZmFpbHVyZTog
b3ZlcmxhcHBpbmcgcmVzb3VyY2VzLgo+Cj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGlu
dXgvdjYuMTIuNi9zb3VyY2UvZHJpdmVycy92aWRlby9hcGVydHVyZS5jI0wxNzUKClRoaXMgZXJy
b3IgbWVhbnMgdGhhdCB0aGVyZSdzIGFscmVhZHkgYW4gaW5zdGFuY2Ugb2Ygc2ltcGxlZHJtIGJv
dW5kIHRvIAp0aGUgQk1DIGZyYW1lYnVmZmVyLiBTbyB5b3UgYWxyZWFkeSBoYXZlIGEgd29ya2lu
ZyBkaXNwbGF5IGFuZCBzb21lIApncmFwaGljcyB1bmRlciBMaW51eCB3aXRob3V0IHRoZSBuZXcg
ZHJpdmVyLCByaWdodD8KCklmIHNvLCB3aHkgZG8geW91IG5lZWQgYSBuZXcgZHJpdmVyIHRoYXQg
ZG9lcyBleGFjdGx5IHRoZSBzYW1lIGFzIHNpbXBsZWRybT8KCkJlc3QgcmVnYXJkcwpUaG9tYXMK
Cj4+PiBCZWNhdXNlIGFsdGhvdWdoIHdlIHJlZ2lzdGVyIHRoZSBkcml2ZXIgaW4gcGxhdGZvcm0g
Zm9ybSwgaXRzIG1lbW9yeQo+Pj4gYmVsb25ncyB0byBwY2kgc3BhY2UgYW5kIHdlIGNhbiBzZWUg
dGhlIGNvcnJlc3BvbmRpbmcgcGNpIHByb2JlIGFuZAo+Pj4gcmVzb3VyY2UgYWxsb2NhdGlvbiBp
biBQYXRjaC0xLgo+PiBJIGRvbid0IHVuZGVyc3RhbmQuIEdyYXBoaWNzIG1lbW9yeSBpcyBvZnRl
biBsb2NhdGVkIG9uIHRoZSBQQ0kgYnVzLgo+PiBXaGF0IGlzIHNvIHNwZWNpYWwgYWJvdXQgdGhp
cyBvbmU/Cj4+Cj4+PiBUaGVyZWZvcmUsIHdlIG5lZWQgdG8gdXNlIGFwZXJ0dXJlX3JlbW92ZV9j
b25mbGljdGluZ19wY2lfZGV2aWNlcygpLgo+PiBTbyB0aGVyZSBpcyBhbHJlYWR5IGEgZGV2aWNl
IHRoYXQgcmVwcmVzZW50cyB0aGUgZ3JhcGhpY3MgY2FyZD8gVGhhdCdzCj4+IHdoYXQgeW91J2Qg
cmVtb3ZlIGhlcmU/IElmIHlvdSBvbmx5IGFkZCB0aGF0IE1GRCBkZXZpY2UsIHdobyBvd25zIHRo
ZQo+PiBmcmFtZWJ1ZmZlcj8gSWYgaXQncyB0aGUgUENJIGRldmljZSBmcm9tIHBhdGNoIDEgKCJs
czJrLWJtYyIpLCB3aHkgZG9lcwo+PiBhcGVydHVyZV9yZW1vdmVfY29uZmxpY3RpbmdfcGNpX2Rl
dmljZXMoKSBub3QgcmVtb3ZlIHRoYXQgZGV2aWNlPyBJJ20KPj4gc29tZXdoYXQgY29uZnVzZWQs
IGJlY2F1c2UgdGhlIGxvZ2ljIGluIHlvdXIgZHJpdmVyIG1vc3RseSBsb29rcyBsaWtlIGl0Cj4+
IGJpbmRzIHRvIGEgcHJlLWNvbmZpZ3VyZWQgZnJhbWVidWZmZXIsIGJ1dCBzb21lIG9mIHRoZSBj
b2RlIGRvZXNuJ3QuCj4gUGVyaGFwcyB0aGUgdXNlIG9mIGFwZXJ0dXJlX3JlbW92ZV9jb25mbGlj
dGluZ19wY2lfZGV2aWNlcygpIGlzIHdyb25nLAo+IGFzIHRoZXJlIGlzIG9ubHkgb25lIGRpc3Bs
YXkgZGV2aWNlIGZvciB0aGUgTFMySyBCTUMgYW5kIHRoZXJlIHdpbGwgYmUKPiBubyBwaGFzZSBj
b25mbGljdC4KPgo+IFdoZW4gSSB0cmllZCB0byB1c2UgdGhhdCBBUEkgYmVmb3JlLCBpdCB3YXMg
cGFydGx5IGR1ZSB0byB0aGUgZXJyb3IKPiBhYm92ZSwgYW5kIHBhcnRseSBiZWNhdXNlIEkgcmVm
ZXJlbmNlZCB0aGF0IG90aGVyIGRpc3BsYXkgZHJpdmVycyB2aWEKPiBwY2lfZHJpdmVyLnByb2Jl
KCkgd291bGQgaGF2ZSBpdCwganVzdCBpbiBjYXNlIEkgdXNlZCBpdCwgd2hpY2ggd2FzCj4gcHJv
YmFibHkgdGhlIHdyb25nIGNob2ljZS4KPgo+IFRoZSByZXNvdXJjZXMgZm9yIHBjaSBiYXIwIGFy
ZSBhcyBmb2xsb3dzOgo+IEJBUjA6IGUwMDMwMDAwMDAwL1NaXzMyTQo+Cj4gMHgwICAgICAgICAg
ICAgICAweDYwMDAwMCAgMHhmMDAwMDFjICAgIDE2TSAgICAgICAgICAgIDMyTQo+ICstLS0tKy0t
LS0tLS0tLS0tLS0tKy0tLS0tLS0tKy0tLS0tLS0tLS0tKy0tLSstLS0tLS0tLS0tLS0tLS0tLSsK
PiB8IDJNIHwgc2ltcGxkcm0gfCAgICAgICAgICAgfCBJUE1JICAgICAgfCAgICAgfCB2aWRlbyBl
bnYgICAgIHwKPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0rCj4KPiBUaGUgbWZkIGRyaXZlciByZWdpc3RlcnMgdGhlIGxz
MmtibWMtZnJhbWVidWZmZXIgYW5kIGxzMmstaXBtaS1zaQo+IGRldmljZXMgYWNjb3JkaW5nIHRv
IHRoZSByZXNvdXJjZSBhbGxvY2F0aW9uIHNob3duIGFib3ZlLiBBdCB0aGUgc2FtZQo+IHRpbWUs
IHRoZSBsczJrYm1jIGRybSBpcyBib3VuZCB0byB0aGUgcHJlLWNvbmZpZ3VyZWQg4oCcc2ltcGxk
cm3igJ0KPiByZXNvdXJjZSBpbiB0aGUgYWJvdmUgZmlndXJlLCB3aGljaCBpcyBwYXNzZWQgdGhy
b3VnaCB0aGUKPiBsczJrYm1jLWZyYW1lYnVmZmVyIGRyaXZlci4gSW4gYWRkaXRpb24sIHRoZSBy
ZXNvbHV0aW9uIGlzIHJlYWQgZnJvbQo+IOKAnHZpZGVvIGVuduKAnSBmb3IgdGhlIHRpbWUgYmVp
bmcsIGFuZCB0aGUgcmVzb2x1dGlvbiBhZGFwdGlvbiBpcyBwbGFubmVkCj4gdG8gYmUgYWRkZWQg
bGF0ZXIuCj4KPj4gQmVzdCByZWdhcmRzIFRob21hcwo+Pgo+Pj4gQWxzbywgc2luY2Ugd2UgYXJl
IHVzaW5nIEJNQyBkaXNwbGF5LCB0aGUgZGlzcGxheSB3aWxsIGJlIGRpc2Nvbm5lY3RlZAo+Pj4g
d2hlbiBCTUMgcmVzZXQsIGF0IHRoaXMgdGltZSB3ZSBuZWVkIHRvIHB1c2ggdGhlIGRpc3BsYXkg
ZGF0YSAoY3J0YywKPj4+IGNvbm5lY3RvciwgZXRjLikgbWFudWFsbHkgYXMgc2hvd24gaW4gUGF0
Y2gtNC4KPj4+Cj4+PiBQcm9iYWJseSBpdCdzIG5vdCB0aGUgbW9zdCBzdWl0YWJsZSB3YXkgdG8g
aW1wbGVtZW50IGl0Lgo+Pj4KPj4+PiBCZXN0IHJlZ2FyZHMKPj4+PiBUaG9tYXMKPj4+Pgo+Pj4+
PiArICAgICB9LAo+Pj4+PiArICAgICAucHJvYmUgPSBsczJrYm1jX3Byb2JlLAo+Pj4+PiArICAg
ICAucmVtb3ZlID0gbHMya2JtY19yZW1vdmUsCj4+Pj4+ICt9Owo+Pj4+PiArCj4+Pj4+ICttb2R1
bGVfcGxhdGZvcm1fZHJpdmVyKGxzMmtibWNfcGxhdGZvcm1fZHJpdmVyKTsKPj4+Pj4gKwo+Pj4+
PiArTU9EVUxFX0RFU0NSSVBUSU9OKCJEUk0gZHJpdmVyIGZvciBMb29uZ3Nvbi0ySyBCTUMiKTsK
Pj4+Pj4gK01PRFVMRV9MSUNFTlNFKCJHUEwiKTsKPj4+PiAtLQo+Pj4+IC0tCj4+Pj4gVGhvbWFz
IFppbW1lcm1hbm4KPj4+PiBHcmFwaGljcyBEcml2ZXIgRGV2ZWxvcGVyCj4+Pj4gU1VTRSBTb2Z0
d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICj4+Pj4gRnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2
MSBOdWVybmJlcmcsIEdlcm1hbnkKPj4+PiBHRjogSXZvIFRvdGV2LCBBbmRyZXcgTXllcnMsIEFu
ZHJldyBNY0RvbmFsZCwgQm91ZGllbiBNb2VybWFuCj4+Pj4gSFJCIDM2ODA5IChBRyBOdWVybmJl
cmcpCj4+Pj4KPj4gLS0KPj4gLS0KPj4gVGhvbWFzIFppbW1lcm1hbm4KPj4gR3JhcGhpY3MgRHJp
dmVyIERldmVsb3Blcgo+PiBTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKPj4g
RnJhbmtlbnN0cmFzc2UgMTQ2LCA5MDQ2MSBOdWVybmJlcmcsIEdlcm1hbnkKPj4gR0Y6IEl2byBU
b3RldiwgQW5kcmV3IE15ZXJzLCBBbmRyZXcgTWNEb25hbGQsIEJvdWRpZW4gTW9lcm1hbgo+PiBI
UkIgMzY4MDkgKEFHIE51ZXJuYmVyZykKPj4KPgo+IC0tCj4gVGhhbmtzLgo+IEJpbmJpbgoKLS0g
Ci0tClRob21hcyBaaW1tZXJtYW5uCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIKU1VTRSBTb2Z0
d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICkZyYW5rZW5zdHJhc3NlIDE0NiwgOTA0NjEgTnVl
cm5iZXJnLCBHZXJtYW55CkdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVycywgQW5kcmV3IE1jRG9u
YWxkLCBCb3VkaWVuIE1vZXJtYW4KSFJCIDM2ODA5IChBRyBOdWVybmJlcmcpCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3Bl
ciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZl
bG9wZXIK
