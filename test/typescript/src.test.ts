import dotFiles from '../../src/index';

describe('Sample test', () => {

	test('Output equals input', () => {
		expect(dotFiles('message')).toBe('message');
	});

});
