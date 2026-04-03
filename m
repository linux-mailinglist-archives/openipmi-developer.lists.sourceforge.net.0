Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oI3XLDG/z2kM0QYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 15:22:57 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B2D394659
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 15:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7mQ5lcHTFiZyniCwDI2rgnDvfWlMliifkmDmzjhfUl8=; b=hiCEmVcIuxkPcRadVRSQMxSzgr
	gFiXmKD8X5/DFa/7AzReXGwTTJcpgkMMPgnHU2AMevrgkOyD+jFJOI9K/ySSwigJz0UgMHNMCrcji
	8dYccNOHYIVr5sK73K8TsPQ+smKDD7A763ADWWBIR2knvcEHvGxGOt8xvRKZ7eM+bsKE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8eU4-0007nF-MF;
	Fri, 03 Apr 2026 13:22:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1w8eU2-0007n7-PQ
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 13:22:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HcIMJ6EXC/zS9rTrRxoES4H6wJbRTcaNQfLiwvMJPGo=; b=jmpE3G+bIyA57Ky8HPXuLYALPI
 4lLSyN9F6Iho2tFxT7U/rUJ22v8hDBXwWGP/JtM+r/4ZpgCxcQR1MhcXRS/NXOZQY2amxeW2qn35N
 G33irelD4Y9JtztB6E1vEhFXXjsbpoBLf/2dF4WkS7ESDBG6VtQeOuYgnjzKAkI2fG8U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HcIMJ6EXC/zS9rTrRxoES4H6wJbRTcaNQfLiwvMJPGo=; b=RsLTpOy1jnVeuus2Erql3XzK6A
 sBMdTZ3RqQwJ0Fti57tp+hasIysarNqqAyg31yIfCLNkNZC0qdG97hAis+KG5XKu5Eu91otLf+CcC
 TaQQIys40K7/fzsfUiU4KV6l8nhMOXIEG3h8cuj/laChY8M4NWkEbWdjL0rGWLVpdlcs=;
Received: from mail-dy1-f182.google.com ([74.125.82.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w8eU1-0006P4-OI for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 13:22:46 +0000
Received: by mail-dy1-f182.google.com with SMTP id
 5a478bee46e88-2c7d8bbad06so4489664eec.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 03 Apr 2026 06:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1775222560; x=1775827360; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HcIMJ6EXC/zS9rTrRxoES4H6wJbRTcaNQfLiwvMJPGo=;
 b=juy/7MXxGndK9OXSYkn5WSMgYB+3YUliz3Mwti89WrpTMCdvdV+eMEw3mejfQTRgQn
 IXAMl9627fN5HnzsAySyBgxbqduoqJkFHXYWEbz/QKlDQsj95gfabKNc7jDFwf3jPq/a
 LklJXX+whAzn4S7IYKDZsTzM5mvn9kNNMfb0eFvY1++xZevXqDqP+IVT/wvw9MHR6BOe
 u+iYO6skBHYEnTlfUqK98dGBHdwt3l+0pNHpgYqSviSzqP0iYeUMadErminCYkIOoH76
 9em+dADwK5QkVRtnPXAtGjG4mZjXF1Lzm+2Zftp3aEU/2YzauJOmpsLqAKomk7ONxtvt
 gzxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775222560; x=1775827360;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=HcIMJ6EXC/zS9rTrRxoES4H6wJbRTcaNQfLiwvMJPGo=;
 b=OEv/k7kzjcMtDJNM6xLLXo4YA9EKrRv93TPU+xMSNemei17YO2hmxo6cMhajo/1gcr
 v46YL/MvPXOyDMMiXYiNsIBTi9i8dZ2ox2R8ZJ5ElHgwHAjzUz3x7o1bxgNQQy2sPXg2
 mLUWuHhMTwwq5JmITTTgr+6fbXGQ3QSa7eSRKuW1Ltze+kd+AVjraJdCpyr4dqg8gMwW
 oUrkdul57OFZSep88Wdorj6QhBSAMQhetTBGRZXdUgIR611VplhOWWvd8qg/m/iMW22I
 bKD9KjySlIE0CAGHjkFFdkr1yXbcLqeE0Vd+Mt8ln02OZeeO4bPxWEXzSvWYbZIMbm1I
 DmPg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUuyyNQXqNmu8WQIPK+clcbMxV5H9xLCdg5Ven0gtNHVEoCiqUYObB70SNCe2mIpfdSRuDqKtKizmzA+MUSJfinc3o=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyyAVYG1ujfUCJR+zm0xVow0LTj49SMETiRZZv+JxP7pml36uF4
 i2rDdg/5SBg8w9bbXf55V7ubLV0STRzOulpyFwAoBCUYV7NNw/bPE/WGKnUNveyKOv4HiRoSKzW
 TaM9UpH4=
X-Gm-Gg: AeBDieuevGnvFIZioAWBU+HysUtqBpz05wYdoWM05Hfxf0cgP5FrZLiZPWMgtYuMucf
 SgjU2e56gcIREtfb/zjs15q167uMaRN4Sg5MKq1RKs4JJeB4dfUv2MSAA7cCPoEvJJSpf8PVdYz
 oHfnxgkuqVKnJ4iriq8V3CR+q+tlpZRf5qkluZDNqN6+G3M3wfvq2eIuNVppvU3Ww/u47GwvfqD
 IjxAlYeXArTivBjJxstGFOWDwxBylhm5TyHKFefap0TPJbB+GSxlp4trb0ZCa3XvmvjzpCj6hLw
 4IHYXUbtc6kJf8Yv8UbUeMgXhOtwnswAmXworrFFdXSp8/FpOHiO1bAkK6moYlTAhe4tCJh/CJV
 xKIvI5w6ZTcQ87seEJzFclPgx4VlAiTrABkYK7JBfrvE0cIIXprsWtBhRaBmEL2EBEfRZnFB/Vb
 5vKcITqkxMHNDjt5WgTquj/XQumoYKJc+7PeCfKKiJOq7j87LXdx4zid2KuFRZW1spoecK4jOfF
 DDHYEvIHBONAXA=
X-Received: by 2002:a05:6871:e023:b0:41c:3225:f98b with SMTP id
 586e51a60fabf-4230fcb1c36mr1403751fac.10.1775222069661; 
 Fri, 03 Apr 2026 06:14:29 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:67f7:eb47:a398:6ff2])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-4231f7712bcsm904373fac.18.2026.04.03.06.14.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2026 06:14:29 -0700 (PDT)
Date: Fri, 3 Apr 2026 08:14:25 -0500
From: Corey Minyard <corey@minyard.net>
To: Jian Zhang <zhangjian.3032@bytedance.com>
Message-ID: <ac-9MfTjR1rdo4Sf@mail.minyard.net>
References: <20260403090603.3988423-1-zhangjian.3032@bytedance.com>
 <20260403090603.3988423-5-zhangjian.3032@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260403090603.3988423-5-zhangjian.3032@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Apr 03, 2026 at 05:06:02PM +0800, Jian Zhang wrote:
 > Add some unit test for state machine when in SSIF_ABORTING state. > > Fixes:
 dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver") > Signed [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.125.82.182 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1w8eU1-0006P4-OI
Subject: Re: [Openipmi-developer] [PATCH v2 5/5] ipmi: ssif_bmc: add unit
 test for state machine
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
Cc: openipmi-developer@lists.sourceforge.net,
 Quan Nguyen <quan@os.amperecomputing.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhangjian.3032@bytedance.com,m:openipmi-developer@lists.sourceforge.net,m:quan@os.amperecomputing.com,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bytedance.com:email,mail.minyard.net:mid,minyard.net:replyto]
X-Rspamd-Queue-Id: A0B2D394659
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 03, 2026 at 05:06:02PM +0800, Jian Zhang wrote:
> Add some unit test for state machine when in SSIF_ABORTING state.
> 
> Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
> Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com>
> ---
> v2: remove undefined symbol response_in_send
> 
>  drivers/char/ipmi/Kconfig    |  10 +
>  drivers/char/ipmi/ssif_bmc.c | 401 +++++++++++++++++++++++++++++++++++
>  2 files changed, 411 insertions(+)
> 
> diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
> index 92bed266d07c..709820f80266 100644
> --- a/drivers/char/ipmi/Kconfig
> +++ b/drivers/char/ipmi/Kconfig
> @@ -187,6 +187,16 @@ config SSIF_IPMI_BMC
>  	  The driver implements the BMC side of the SMBus system
>  	  interface (SSIF).
>  
> +config SSIF_IPMI_BMC_KUNIT_TEST
> +	bool "KUnit tests for SSIF IPMI BMC driver" if !KUNIT_ALL_TESTS
> +	depends on KUNIT=y
> +	depends on SSIF_IPMI_BMC=y

Any reason for the "=y" in the above two?

It's best to remove them if they are not needed so it can work in a
module.  I can make that change, there's no need for a new series for
that.

Oh, and I forgot to say in the reply on the first change, thanks Quan
for reviewing these.

-corey

> +	default KUNIT_ALL_TESTS
> +	help
> +	  This option builds unit tests that exercise the SSIF BMC state
> +	  machine, including request handling, response transmission,
> +	  and error paths such as aborted or truncated transfers.
> +
>  config IPMB_DEVICE_INTERFACE
>  	tristate 'IPMB Interface handler'
>  	depends on I2C
> diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
> index 646a1e9ffbb7..726626126cea 100644
> --- a/drivers/char/ipmi/ssif_bmc.c
> +++ b/drivers/char/ipmi/ssif_bmc.c
> @@ -18,6 +18,9 @@
>  #include <linux/timer.h>
>  #include <linux/jiffies.h>
>  #include <linux/ipmi_ssif_bmc.h>
> +#if IS_ENABLED(CONFIG_SSIF_IPMI_BMC_KUNIT_TEST)
> +#include <kunit/test.h>
> +#endif
>  
>  #define DEVICE_NAME                             "ipmi-ssif-host"
>  
> @@ -886,6 +889,404 @@ static struct i2c_driver ssif_bmc_driver = {
>  	.id_table       = ssif_bmc_id,
>  };
>  
> +#if IS_ENABLED(CONFIG_SSIF_IPMI_BMC_KUNIT_TEST)
> +struct ssif_bmc_test_ctx {
> +	struct ssif_bmc_ctx ssif_bmc;
> +	struct i2c_client client;
> +	struct i2c_adapter adapter;
> +	struct i2c_algorithm algo;
> +};
> +
> +static int ssif_bmc_test_init(struct kunit *test)
> +{
> +	struct ssif_bmc_test_ctx *test_ctx;
> +
> +	test_ctx = kunit_kzalloc(test, sizeof(*test_ctx), GFP_KERNEL);
> +	if (!test_ctx)
> +		return -ENOMEM;
> +
> +	test_ctx->adapter.algo = &test_ctx->algo;
> +	test_ctx->client.addr = 0x20;
> +	test_ctx->client.adapter = &test_ctx->adapter;
> +
> +	spin_lock_init(&test_ctx->ssif_bmc.lock);
> +	init_waitqueue_head(&test_ctx->ssif_bmc.wait_queue);
> +	test_ctx->ssif_bmc.client = &test_ctx->client;
> +	i2c_set_clientdata(&test_ctx->client, &test_ctx->ssif_bmc);
> +
> +	test->priv = test_ctx;
> +
> +	return 0;
> +}
> +
> +static void ssif_bmc_test_exit(struct kunit *test)
> +{
> +	struct ssif_bmc_test_ctx *test_ctx = test->priv;
> +
> +	if (test_ctx->ssif_bmc.response_timer_inited)
> +		timer_delete_sync(&test_ctx->ssif_bmc.response_timer);
> +}
> +
> +static int ssif_bmc_test_run_event_val(struct ssif_bmc_test_ctx *test_ctx,
> +					       enum i2c_slave_event event,
> +					       u8 *value)
> +{
> +	return ssif_bmc_cb(&test_ctx->client, event, value);
> +}
> +
> +static int ssif_bmc_test_run_event(struct ssif_bmc_test_ctx *test_ctx,
> +					   enum i2c_slave_event event, u8 value)
> +{
> +	return ssif_bmc_test_run_event_val(test_ctx, event, &value);
> +}
> +
> +static void ssif_bmc_test_singlepart_req(struct kunit *test)
> +{
> +	struct ssif_bmc_test_ctx *test_ctx = test->priv;
> +	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
> +
> +	ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
> +				GET_8BIT_ADDR(test_ctx->client.addr));
> +	ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
> +				SSIF_IPMI_SINGLEPART_WRITE);
> +	ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 2);
> +
> +	ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0xaa);
> +
> +	ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0x55);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), -EBUSY);
> +
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_READY);
> +	KUNIT_EXPECT_TRUE(test, ssif_bmc->request_available);
> +	KUNIT_EXPECT_TRUE(test, ssif_bmc->busy);
> +	KUNIT_EXPECT_FALSE(test, ssif_bmc->aborting);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->request.len, 2);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->request.payload[0], 0xaa);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->request.payload[1], 0x55);
> +	KUNIT_EXPECT_TRUE(test, ssif_bmc->response_timer_inited);
> +}
> +
> +static void ssif_bmc_test_restart_write_without_stop(struct kunit *test)
> +{
> +	struct ssif_bmc_test_ctx *test_ctx = test->priv;
> +	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
> +
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
> +						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
> +						SSIF_IPMI_SINGLEPART_WRITE), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 2), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0xde), 0);
> +
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_REQ_RECVING);
> +
> +	/* Write transaction, without stop, and new request coming */
> +	ssif_bmc_test_singlepart_req(test);
> +}
> +
> +
> +static void ssif_bmc_test_restart_after_invalid_command(struct kunit *test)
> +{
> +	struct ssif_bmc_test_ctx *test_ctx = test->priv;
> +	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
> +
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
> +						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0xff), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 1), 0);
> +
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_ABORTING);
> +	KUNIT_EXPECT_TRUE(test, ssif_bmc->aborting);
> +
> +	/* After An Invalid Command, expect could handle new request */
> +	ssif_bmc_test_singlepart_req(test);
> +}
> +
> +static void ssif_bmc_test_restart_after_invalid_length(struct kunit *test)
> +{
> +	struct ssif_bmc_test_ctx *test_ctx = test->priv;
> +	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
> +	int i;
> +
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
> +						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
> +						SSIF_IPMI_SINGLEPART_WRITE), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
> +						MAX_PAYLOAD_PER_TRANSACTION + 1), 0);
> +
> +	for (i = 0; i < MAX_PAYLOAD_PER_TRANSACTION + 1; i++)
> +		KUNIT_ASSERT_EQ(test,
> +				ssif_bmc_test_run_event(test_ctx,
> +							I2C_SLAVE_WRITE_RECEIVED, i), 0);
> +
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), 0);
> +	KUNIT_EXPECT_TRUE(test, ssif_bmc->aborting);
> +	KUNIT_EXPECT_FALSE(test, ssif_bmc->request_available);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_REQ_RECVING);
> +
> +	ssif_bmc_test_singlepart_req(test);
> +}
> +
> +static void ssif_bmc_test_singlepart_read_response_completion(struct kunit *test)
> +{
> +	struct ssif_bmc_test_ctx *test_ctx = test->priv;
> +	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
> +	u8 value;
> +
> +	ssif_bmc->state = SSIF_SMBUS_CMD;
> +	ssif_bmc->part_buf.smbus_cmd = SSIF_IPMI_SINGLEPART_READ;
> +	ssif_bmc->response.len = 2;
> +	ssif_bmc->response.payload[0] = 0x11;
> +	ssif_bmc->response.payload[1] = 0x22;
> +	ssif_bmc->response_in_progress = true;
> +	ssif_bmc->is_singlepart_read = true;
> +	ssif_bmc->pec_support = true;
> +
> +	value = 0;
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_REQUESTED,
> +						    &value), 0);
> +	KUNIT_EXPECT_EQ(test, value, 2);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_RES_SENDING);
> +
> +	value = 0;
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_PROCESSED,
> +						    &value), 0);
> +	KUNIT_EXPECT_EQ(test, value, 0x11);
> +
> +	value = 0;
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_PROCESSED,
> +						    &value), 0);
> +	KUNIT_EXPECT_EQ(test, value, 0x22);
> +
> +	value = 0;
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_PROCESSED,
> +						    &value), 0);
> +	KUNIT_EXPECT_EQ(test, value, ssif_bmc->part_buf.pec);
> +
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), 0);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_READY);
> +	KUNIT_EXPECT_FALSE(test, ssif_bmc->response_in_progress);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->response.len, 0);
> +}
> +
> +static void ssif_bmc_test_stop_during_start_discards_partial_request(struct kunit *test)
> +{
> +	struct ssif_bmc_test_ctx *test_ctx = test->priv;
> +	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
> +
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
> +						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_START);
> +
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), 0);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_READY);
> +	KUNIT_EXPECT_FALSE(test, ssif_bmc->request_available);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->msg_idx, 0);
> +
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
> +						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
> +						SSIF_IPMI_SINGLEPART_WRITE), 0);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 1), 0);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0x77), 0);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), -EBUSY);
> +
> +	KUNIT_EXPECT_TRUE(test, ssif_bmc->request_available);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->request.len, 1);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->request.payload[0], 0x77);
> +}
> +
> +static void ssif_bmc_test_read_interrupts_partial_write(struct kunit *test)
> +{
> +	struct ssif_bmc_test_ctx *test_ctx = test->priv;
> +	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
> +	u8 value = 0xff;
> +
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
> +						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
> +						SSIF_IPMI_SINGLEPART_WRITE), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 2), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0xab), 0);
> +
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_REQ_RECVING);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_REQUESTED,
> +						    &value), 0);
> +	KUNIT_EXPECT_EQ(test, value, 0);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_ABORTING);
> +
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), 0);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_READY);
> +	KUNIT_EXPECT_FALSE(test, ssif_bmc->request_available);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->request.len, 0);
> +
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
> +						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
> +						SSIF_IPMI_SINGLEPART_WRITE), 0);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 1), 0);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0xcd), 0);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), -EBUSY);
> +
> +	KUNIT_EXPECT_TRUE(test, ssif_bmc->request_available);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->request.len, 1);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->request.payload[0], 0xcd);
> +}
> +
> +static void ssif_bmc_test_write_interrupts_response_send(struct kunit *test)
> +{
> +	struct ssif_bmc_test_ctx *test_ctx = test->priv;
> +	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
> +	u8 value = 0;
> +
> +	ssif_bmc->state = SSIF_SMBUS_CMD;
> +	ssif_bmc->part_buf.smbus_cmd = SSIF_IPMI_SINGLEPART_READ;
> +	ssif_bmc->response.len = 1;
> +	ssif_bmc->response.payload[0] = 0x66;
> +	ssif_bmc->response_in_progress = true;
> +	ssif_bmc->is_singlepart_read = true;
> +
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_REQUESTED,
> +						    &value), 0);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_RES_SENDING);
> +
> +	/* READ_REQUESTED transaction */
> +	ssif_bmc_test_singlepart_req(test);
> +}
> +
> +static void ssif_bmc_test_write_interrupts_response_sending(struct kunit *test)
> +{
> +	struct ssif_bmc_test_ctx *test_ctx = test->priv;
> +	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
> +	u8 value = 0;
> +
> +	ssif_bmc->state = SSIF_SMBUS_CMD;
> +	ssif_bmc->part_buf.smbus_cmd = SSIF_IPMI_SINGLEPART_READ;
> +	ssif_bmc->response.len = 1;
> +	ssif_bmc->response.payload[0] = 0x66;
> +	ssif_bmc->response_in_progress = true;
> +	ssif_bmc->is_singlepart_read = true;
> +
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_REQUESTED,
> +						    &value), 0);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->state, SSIF_RES_SENDING);
> +
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event_val(test_ctx, I2C_SLAVE_READ_PROCESSED,
> +						    &value), 0);
> +	KUNIT_EXPECT_EQ(test, value, 0x66);
> +
> +	/* READ_REQUESTED transaction */
> +	ssif_bmc_test_singlepart_req(test);
> +}
> +
> +static void ssif_bmc_test_timeout_interrupt_allows_retry(struct kunit *test)
> +{
> +	struct ssif_bmc_test_ctx *test_ctx = test->priv;
> +	struct ssif_bmc_ctx *ssif_bmc = &test_ctx->ssif_bmc;
> +
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
> +						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
> +						SSIF_IPMI_SINGLEPART_WRITE), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 1), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0x21), 0);
> +	KUNIT_ASSERT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), -EBUSY);
> +
> +	KUNIT_ASSERT_TRUE(test, timer_pending(&ssif_bmc->response_timer));
> +	timer_delete_sync(&ssif_bmc->response_timer);
> +	response_timeout(&ssif_bmc->response_timer);
> +
> +	KUNIT_EXPECT_FALSE(test, ssif_bmc->busy);
> +	KUNIT_EXPECT_TRUE(test, ssif_bmc->aborting);
> +	KUNIT_EXPECT_FALSE(test, ssif_bmc->response_timer_inited);
> +
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_REQUESTED,
> +						GET_8BIT_ADDR(test_ctx->client.addr)), 0);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED,
> +						SSIF_IPMI_SINGLEPART_WRITE), 0);
> +	KUNIT_EXPECT_FALSE(test, ssif_bmc->aborting);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 1), 0);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_WRITE_RECEIVED, 0x22), 0);
> +	KUNIT_EXPECT_EQ(test,
> +			ssif_bmc_test_run_event(test_ctx, I2C_SLAVE_STOP, 0), -EBUSY);
> +
> +	KUNIT_EXPECT_TRUE(test, ssif_bmc->request_available);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->request.len, 1);
> +	KUNIT_EXPECT_EQ(test, ssif_bmc->request.payload[0], 0x22);
> +}
> +
> +static struct kunit_case ssif_bmc_test_cases[] = {
> +	KUNIT_CASE(ssif_bmc_test_singlepart_req),
> +	KUNIT_CASE(ssif_bmc_test_restart_write_without_stop),
> +	KUNIT_CASE(ssif_bmc_test_restart_after_invalid_command),
> +	KUNIT_CASE(ssif_bmc_test_restart_after_invalid_length),
> +	KUNIT_CASE(ssif_bmc_test_singlepart_read_response_completion),
> +	KUNIT_CASE(ssif_bmc_test_stop_during_start_discards_partial_request),
> +	KUNIT_CASE(ssif_bmc_test_read_interrupts_partial_write),
> +	KUNIT_CASE(ssif_bmc_test_write_interrupts_response_send),
> +	KUNIT_CASE(ssif_bmc_test_write_interrupts_response_sending),
> +	KUNIT_CASE(ssif_bmc_test_timeout_interrupt_allows_retry),
> +	{}
> +};
> +
> +static struct kunit_suite ssif_bmc_test_suite = {
> +	.name = "ssif_bmc_test",
> +	.init = ssif_bmc_test_init,
> +	.exit = ssif_bmc_test_exit,
> +	.test_cases = ssif_bmc_test_cases,
> +};
> +
> +kunit_test_suite(ssif_bmc_test_suite);
> +#endif
> +
>  module_i2c_driver(ssif_bmc_driver);
>  
>  MODULE_AUTHOR("Quan Nguyen <quan@os.amperecomputing.com>");
> -- 
> 2.20.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
